require 'digest'
require 'json'
class PaymentController < ApplicationController
  layout false 
  before_action :set_payment_config
  before_action :set_result
  before_action :set_order
  skip_before_action :verify_authenticity_token

  def notify
    if @order.status == 'SUCCESS' and result_is_valid
      @order.notify
    else
      @order.save_error
    end
    @order.save
    render :nothing => true, :status => 200, :content_type => 'text/html' 
  end

  def return 
    if @order.status == 'SUCCESS' and result_is_valid
      @order.confirm
      @order.save
      redirect_to order_path(@order)
    else
      @order.save_error
      @order.save
      flash[:notice] = @order.message
      redirect_to root_path
    end
  end

  private

  def result_is_valid
    @result['CheckCode'] == checkcode
  end

  def checkcode
    raw = "HashIV=#{@config.hash_iv}&Amt=#{@result['Amt']}&MerchantID=#{@config.merchant_id}&MerchantOrderNo=#{@result['MerchantOrderNo']}&TradeNo=#{@result['TradeNo']}&HashKey=#{@config.hash_key}"
    return Digest::SHA256.hexdigest(raw).upcase
  end

  def set_payment_config
    @config = PaymentConfig.last
  end

  def set_result
    data = JSON.parse(params['JSONData'])
    @result = JSON.parse(data['Result'])
    @result['Status'] = data['Status']
    @result['Message'] = data['Message']
  end

  def set_order
    @order = Order.find_by_merchant_order_no(@result['MerchantOrderNo'])
    @order.update_payment_result(@result)
  end
end

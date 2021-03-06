require 'digest'
class Order < ApplicationRecord
  include AASM

  aasm do
    state :created, :initial => true
    state :confirmed, :payment_received, :product_shipped, :has_error

    event :confirm do
      transitions :from => :created, :to => :confirmed
      transitions :from => :payment_received, :to => :payment_received
    end

    event :notify do
      transitions :from => :confirmed, :to => :payment_received
      transitions :from => :created, :to => :payment_received
    end

    event :ship do
      transitions :from => :payment_received, :to => :product_shipped
    end

    event :save_error do
      transitions :from => :created, :to => :has_error
      transitions :from => :confirmed, :to => :has_error
      transitions :from => :payment_received, :to => :has_error
      transitions :from => :product_shipped, :to => :has_error
      transitions :from => :has_error, :to => :has_error
    end
  end

  belongs_to :product

  def self.find_by_merchant_order_no(merchant_order_no)
    return Order.find_by_id(merchant_order_no.last(5).to_i)
  end

  def merchant_order_no
    "#{created_at.strftime('%Y%m%d%H%M%S')}#{"%05d" % id}"
  end

  def timestamp
    created_at.to_i
  end

  def checkvalue(config)
    raw = "HashKey=#{config.hash_key}&Amt=#{product.price}&MerchantID=#{config.merchant_id}&MerchantOrderNo=#{merchant_order_no}&TimeStamp=#{timestamp}&Version=#{config.version}&HashIV=#{config.hash_iv}"
    return Digest::SHA256.hexdigest(raw).upcase
  end

  def update_payment_result(result)
    self.status = result['Status']
    self.result = result
    self.message = result['Message']
  end
end

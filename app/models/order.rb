require 'digest'
class Order < ApplicationRecord
  belongs_to :product

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
end

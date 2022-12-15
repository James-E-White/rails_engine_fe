class MerchantFacade
  def self.service
    @service ||= MerchantService.new
  end

  def self.get_all_merchants
    merchant_data = service.get_all_merchants
    merchants = merchant_data[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.get_merchant_items(merchant_id)
    merchant_items = service.get_merchant_items(merchant_id)
    merchant_items[:data].map { |item| MerchantItem.new(item) }
  end

end

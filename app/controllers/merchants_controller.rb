require 'faraday'
class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.get_all_merchants
  end


  def show
    
    @merchant = MerchantFacade.find_merchant(params[:id])
    @items = MerchantFacade.get_merchant_items(@merchant.id)
  end
end
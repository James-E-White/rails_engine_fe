require 'faraday'
class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.get_all_merchants
  end


  def show
    @items = MerchantFacade.get_merchant_items(params[:id])
  end
end
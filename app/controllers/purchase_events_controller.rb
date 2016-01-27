class PurchaseEventsController < ApplicationController
  require 'json'

  def index
  end

  def new
    @ebay_product = params[:ebay_id]
    @ebay_price = params[:price]
    @ses = Ebayr.call(:GetSessionID, :RuName => Ebayr.ru_name)[:SessionID]
    session[:id] = @ses
    session[:ebay_item] = @ebay_product
    session[:ebay_price] = @ebay_price
  end

  def create
  end

  def show
    #sess = Ebayr.call(:GetSessionID, :RuName => Ebayr.ru_name)[:SessionID]
    @token = Ebayr.call(:FetchToken, :SessionID => session[:id])[:ebay_auth_token]
    session[:token] = @token
    Ebayr.auth_token = @token

    args = [{ :EndUserIP => request.remote_ip }, { :ItemID => session[:ebay_item] }, { :Offer => [{ :Action => "Purchase"}, { :MaxBid => session[:ebay_price] }, { :Quantity => 1 }] }]

    @req = Ebayr::Request.new(:PlaceOffer, :input => args).send
    #@resp = JSON.parse @req
    #@resp = Ebayr.call(:PlaceOffer, :ItemID => "110168320330", :Action => "Purchase", :auth_token => session[:token], :EndUserIP => request.remote_ip )

  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end

  def token_request
  end

  def verify_token
    puts "token success"
  end

  def token_fail
    put "token fail"
  end

end

class HomeController < AuthenticatedController
  require 'open-uri'

  def index

    ### Production API calls for finding items ###

    # Ebay API request variables
    #@endpoint = 'http://svcs.ebay.com/services/search/FindingService/v1'  # URL to call
    #@version = '1.0.0'  # API version supported by your application
    #@appid = 'National-7535-4e40-b08e-867896f8196f' #National-1f88-4e12-a1ca-32c11867a9ca'  # Replace with your own AppID
    #@globalid = 'EBAY-US'  # Global ID of the eBay site you want to search (e.g., EBAY-DE)
    #@apicall = "#{@endpoint}?"
    #@apicall << "OPERATION-NAME=findItemsAdvanced"
    #@apicall << "&SERVICE-VERSION=#{@version}"
    #@apicall << "&SECURITY-APPNAME=#{@appid}"
    #@apicall << "&GLOBAL-ID=#{@globalid}"
    #@apicall << "&paginationInput.entriesPerPage=1"
    #@apicall << "&RESPONSE-DATA-FORMAT=XML"

    ### Sandbox API calls ###

    @endpoint = 'http://open.api.sandbox.ebay.com/shopping'
    @version = '897'  
    @appid = 'National-1f88-4e12-a1ca-32c11867a9ca'
    
    @apicall = "#{@endpoint}?"
    @apicall << "CALLNAME=GetSingleItem"
    @apicall << "&VERSION=#{@version}"
    @apicall << "&APPID=#{@appid}"
    @apicall << "&SITEID=0"
    @apicall << "&RESPONSEENCODING=XML"

    @orders = ShopifyAPI::Order.find(:all, :params   => {:limit => 30})
  end

end

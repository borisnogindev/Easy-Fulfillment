class EbaySession < ActiveRecord::Base
  include HTTParty

  attr_accessor dev_id, app_id, cert_id, site_id
  attr_accessor serverUrl, compatLevel, verb

  def send_request
    format :xml
    
    headers(ebay_headers.merge({"X-EBAY-API-CALL-NAME" => "GeteBayOfficialTime"}))

    requestXml = "<?xml version='1.0' encoding='utf-8'?>
                  <GeteBayOfficialTimeRequest xmlns=\"urn:ebay:apis:eBLBaseComponents\">
                    <RequesterCredentials>
                      <eBayAuthToken>#{auth_token}</eBayAuthToken>
                    </RequesterCredentials>
                  </GeteBayOfficialTimeRequest>"

    response = post(api_url, :body => requestXml)
    raise "Bad Response | #{response.inspect}" if response.parsed_response['GeteBayOfficialTimeResponse']['Ack'] != 'Success'
    response.parsed_response['GeteBayOfficialTimeResponse']['Timestamp']    
  end

  private

   def self.ebay_headers
    {"X-EBAY-API-COMPATIBILITY-LEVEL" => "433",
     "X-EBAY-API-DEV-NAME" => EBAY_CONFIG['dev_id'],
     "X-EBAY-API-APP-NAME" => EBAY_CONFIG['app_id'],
     "X-EBAY-API-CERT-NAME" => EBAY_CONFIG['cert_id'],
     "X-EBAY-API-SITEID" => "0",
     "Content-Type" => "text/xml"}
   end

   def self.auth_token
    EBAY_CONFIG['auth_token']
   end

   def self.api_url
    EBAY_CONFIG['uri']
   end

  def build_ebay_header
    header =  "X-EBAY-API-COMPATIBILITY-LEVEL:#{self.compatLevel}"
    header << "X-EBAY-API-DEV-NAME:#{self.dev_id}"
    header << "X-EBAY-API-APP-NAME:#{self.app_id}"
    header << "X-EBAY-API-CERT-NAME:#{self.cert_id}"
    header << "X-EBAY-API-SITEID:#{self.site_id}"
    header << "X-EBAY-API-CALL-NAME:#{self.verb}"

    return header
  end

end

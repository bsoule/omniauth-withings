require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
module Strategies
class Withings < OmniAuth::Strategies::OAuth

  option :name, 'withings'
  #option :uid
  option :client_options, {
    :site => 'https://oauth.withings.com',
    :authorize_path => '/account/authorize',
    :request_token_path => '/account/request_token',
    :access_token_path => '/account/access_token'
  }

  uid{ request.params['userid'] }
    
end
end
end

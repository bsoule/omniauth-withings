require 'omniauth-oauth'
require 'multi-json'

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
    #:request_token_path => "/oauth/request_token",
    #:access_token_path  => "/oauth/access_token",
    #:authorize_url      => "https://www.rdio.com/oauth/authorize"
  }

  uid{ request.params['userid'] }
    
  extra do 
    { :raw_info => access_token 
    }
  end

#def auth_hash
#  OmniAuth::Utils.deep_merge(super, {
#    # withings specific stuff here
#    'uid'=>,
#    'user_info'=>
#    'extra' => {  }
#  })
#end
#def user_info
#end
#def user_hash
#  @user_hash ||= MultiJson.decode(@access_token.post(dd
#end


end
end
end

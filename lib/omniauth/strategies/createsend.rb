require "omniauth/strategies/oauth2"

module OmniAuth
  module Strategies
    class CreateSend < OmniAuth::Strategies::OAuth2
      option :name, "createsend"
      option :client_options, {
        :site => "https://api.createsend.com",
        :authorize_url => "/oauth",
        :token_url => "/oauth/token"
      }

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

OmniAuth.config.add_camelization "createsend", "CreateSend"

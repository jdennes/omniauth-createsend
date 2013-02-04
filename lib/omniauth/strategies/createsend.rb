require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class CreateSend < OmniAuth::Strategies::OAuth2
      option :name, "createsend"
      option :client_options, {
        :site => 'https://api.createsend.com',
        :authorize_url => '/oauth',
        :token_url => '/oauth/token'
      }

      def request_phase
        super
      end

      def authorize_params
        super.tap do |params|
          %w[scope client_options].each do |v|
            if request.params[v]
              params[v.to_sym] = request.params[v]
            end
          end
        end
      end

    end
  end
end

OmniAuth.config.add_camelization 'createsend', 'CreateSend'

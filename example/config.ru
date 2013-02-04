require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-createsend'

class App < Sinatra::Base
  get '/' do
    redirect '/auth/createsend'
  end

  get '/auth/createsend/callback' do
    response = "Your user is successfully authenticated. Here are you details you need:<br/><br/>"
    response << "token: #{request.env['omniauth.auth']['credentials']['token']}<br/>"
    response << "refresh token: #{request.env['omniauth.auth']['credentials']['refresh_token']}<br/>"
    response << "expires at: #{request.env['omniauth.auth']['credentials']['expires_at']}<br/>"
    response
  end

  get '/auth/failure' do
    content_type 'application/json'
    MultiJson.encode(request.env)
  end
end

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :createsend, ENV['CREATESEND_CLIENT_ID'], ENV['CREATESEND_CLIENT_SECRET'],
    :scope => 'ViewReports,CreateCampaigns,SendCampaigns'
end

run App.new

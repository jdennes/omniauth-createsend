require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-createsend'

class App < Sinatra::Base
  get '/' do
    redirect '/auth/createsend'
  end

  get '/auth/:provider/callback' do
    content_type 'application/json'
    MultiJson.encode(request.env)
  end

  get '/auth/failure' do
    content_type 'application/json'
    MultiJson.encode(request.env)
  end
end

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :createsend, ENV['CREATESEND_CLIENT_ID'], ENV['CREATESEND_CLIENT_SECRET'],
    :scope => 'ViewReports,ManageLists,CreateCampaigns,ImportSubscribers,SendCampaigns,ViewSubscribersInReports,ManageTemplates'
end

run App.new

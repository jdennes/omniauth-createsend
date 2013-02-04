# OmniAuth CreateSend

This is the official OmniAuth strategy for authenticating with the [Campaign Monitor API](http://www.campaignmonitor.com/api/). You'll need to register an OAuth Application in your Campaign Monitor account to get a Client ID and Client Secret to use with this OmniAuth strategy.

## Installing

Add a dependency in your `Gemfile`:

```ruby
gem 'omniauth-createsend'
```

Then `bundle install`.

## Basic Usage

```ruby
use OmniAuth::Builder do
  provider "createsend", ENV['CREATESEND_CLIENT_ID'], ENV['CREATESEND_CLIENT_SECRET'], :scope => 'ViewReports,CreateCampaigns,SendCampaigns'
end
```

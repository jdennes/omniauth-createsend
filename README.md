# OmniAuth CreateSend

This is the [OmniAuth](http://www.omniauth.org/) strategy for authenticating with the [Campaign Monitor API](http://www.campaignmonitor.com/api/). You'll need to register an OAuth Application in your Campaign Monitor account to get a Client ID and Client Secret to use with this OmniAuth strategy.

## Installing

Add a dependency to your `Gemfile` then `bundle install`.

```ruby
gem "omniauth-createsend"
```

## Basic Usage

In Rack applications:

```ruby
use OmniAuth::Builder do
  provider "createsend", ENV["CREATESEND_CLIENT_ID"], ENV["CREATESEND_CLIENT_SECRET"], :scope => "ViewReports,CreateCampaigns,SendCampaigns"
end
```

In Rails applications:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider "createsend", ENV["CREATESEND_CLIENT_ID"], ENV["CREATESEND_CLIENT_SECRET"], :scope => "ViewReports,CreateCampaigns,SendCampaigns"
end
```

This gem also includes an [example](https://github.com/jdennes/omniauth-createsend/blob/master/example/config.ru) Rack application which demonstrates how to authenticate with the Campaign Monitor API using this OmniAuth strategy.

Once you've authenticated, you should use the [createsend](http://campaignmonitor.github.com/createsend-ruby/) gem to access Campaign Monitor resources.

## Contributing

Please check the [guidelines for contributing](https://github.com/jdennes/omniauth-createsend/blob/master/CONTRIBUTING.md) to this repository.

## This stuff should be green

[![Build Status](https://secure.travis-ci.org/jdennes/omniauth-createsend.png)][travis] [![Dependency Status](https://gemnasium.com/jdennes/omniauth-createsend.png)][gemnasium] [![Gem Version](https://badge.fury.io/rb/omniauth-createsend.png)][gembadge]

[travis]: http://travis-ci.org/jdennes/omniauth-createsend
[gemnasium]: https://gemnasium.com/jdennes/omniauth-createsend
[gembadge]: http://badge.fury.io/rb/omniauth-createsend

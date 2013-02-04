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

This gem also includes an [example](https://github.com/campaignmonitor/omniauth-createsend/tree/master/example) Rack application which demonstrates how to authenticate with the Campaign Monitor API using this OmniAuth strategy.

## Contributing
1. Fork the repository
2. Make your changes, including tests for your changes.
3. Ensure that the build passes, by running `bundle exec rake` (CI runs on: `1.9.3`, `1.9.2`, `1.8.7` and `ree`)
4. It should go without saying, but do not increment the version number in your commits.
5. Submit a pull request.

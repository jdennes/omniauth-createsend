require 'spec_helper'
require 'omniauth-createsend'

describe OmniAuth::Strategies::CreateSend do
  subject do
    OmniAuth::Strategies::CreateSend.new({})
  end

  describe '#client' do
    it 'should have the correct createsend site' do
      subject.client.site.should eq("https://api.createsend.com")
    end

    it 'should have the correct authorization url' do
      subject.client.options[:authorize_url].should eq("/oauth")
    end

    it 'should have the correct token url' do
      subject.client.options[:token_url].should eq('/oauth/token')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      subject.callback_path.should eq('/auth/createsend/callback')
    end
  end
end

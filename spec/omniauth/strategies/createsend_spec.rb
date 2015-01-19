require 'spec_helper'

describe OmniAuth::Strategies::CreateSend do
  def app; lambda{|env| [200, {}, ["Hello."]]} end
  let(:fresh_strategy){ Class.new(OmniAuth::Strategies::CreateSend) }

  before do
    OmniAuth.config.test_mode = true
  end

  after do
    OmniAuth.config.test_mode = false
  end

  describe '#client' do
    subject{ fresh_strategy }

    it 'should have the correct createsend site' do
      instance = subject.new(app, {})
      expect(instance.client.site).to eq "https://api.createsend.com"
    end

    it 'should have the correct authorization url' do
      instance = subject.new(app, {})
      expect(instance.client.options[:authorize_url]).to eq "/oauth"
    end

    it 'should have the correct token url' do
      instance = subject.new(app, {})
      expect(instance.client.options[:token_url]).to eq '/oauth/token'
    end
  end

  describe '#authorize_params' do
    subject { fresh_strategy }

    it 'should include the appropriate authorize params passed in the :authorize_params option' do
      instance = subject.new('abc', 'def', :authorize_params => {:scope => 'ViewReports,ImportSubscribers', :something => 'else', :state => '4321'})
      expect(instance.authorize_params[:scope]).to eq 'ViewReports,ImportSubscribers'
    end

    it 'should include appropriate top-level options that are marked as :authorize_options' do
      instance = subject.new('abc', 'def', :authorize_options => [:scope], :scope => 'ViewReports,ImportSubscribers', :something => 'else', :authorize_params => {:state => '4321'})
      expect(instance.authorize_params[:scope]).to eq 'ViewReports,ImportSubscribers'
    end
  end

  describe '#callback_path' do
    subject{ fresh_strategy }

    it 'should have the correct callback path' do
      instance = subject.new(app, {})
      expect(instance.callback_path).to eq '/auth/createsend/callback'
    end
  end
end

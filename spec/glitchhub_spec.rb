require "vcr"

RSpec.describe Glitchhub do

  let(:glitchhub_client) { Glitchhub::Client.new }

  VCR.configure do |c|
      c.cassette_library_dir = "spec/vcr"
      c.hook_into :faraday
      c.allow_http_connections_when_no_cassette = true
  end

  it "has a version number" do
    expect(Glitchhub::VERSION).not_to be nil
  end

  it "calls the public Github API" do
    VCR.use_cassette("glitchhub/call_public_api") {
      response = glitchhub_client.call_public_root
      expect(response).to have_key('current_user_url')
      
    }
  end

end

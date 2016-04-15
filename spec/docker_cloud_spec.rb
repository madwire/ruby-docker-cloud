require 'spec_helper'

describe DockerCloud do
  it 'has a version number' do
    expect(DockerCloud::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end

describe DockerCloud::Client do
  describe "#headers" do
    subject { described_class.new('foo', 'bar').headers }

    context "Authorization header" do
      it "base64 encodes username and api_key" do
        expect(subject["Authorization"]).to eq("Basic Zm9vOmJhcg==")
      end
    end
  end

  describe "#events" do
    subject { described_class.new('foo', 'bar').events }

    context "Events API" do
      it "will return an Events API object" do
        expect(subject).to expect(@object).to be_a DockerCloud::EventsAPI
      end
    end
  end
end

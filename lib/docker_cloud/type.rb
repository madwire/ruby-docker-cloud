module DockerCloud
  class Type
    include DockerCloud::Helpers
    attr_accessor :uuid, :resource_uri

    def initialize(response, client)
      @info = response
      @client = client
      @uuid = info[:uuid]
      @resource_uri = info[:uuid]
    end

    private

    attr_reader :client

    attr_reader :info
  end
end
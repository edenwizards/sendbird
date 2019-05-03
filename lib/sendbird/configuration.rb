module Sendbird
  module Configuration
    PUBLIC_METHODS = [:applications, :user, :password, :default_app]

    attr_writer :endpoint

    def endpoint
      @endpoint || "https://api.sendbird.com/v3/"
    end

    attr_accessor *PUBLIC_METHODS

    def config
      yield self
    end
  end
end

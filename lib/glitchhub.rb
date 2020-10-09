require "glitchhub/version"
require 'faraday'
require 'oj'

module Glitchhub
  class Error < StandardError; end
  class Client

      API_ENDPOINT = 'https://api.github.com'.freeze

      attr_reader :api_key

      def initialize
      end

      def call_public_root

      end

      private

      def client
        @_client ||= Faraday.new do |client|
          client.ssl[:verify] = false
          client.request :url_encoded
          client.adapter Faraday.default_adapter
          client.headers['Content-Type'] = 'application/json'
        end
      end

    end
end

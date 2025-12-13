# frozen_string_literal: true

module Userplex
  module Resources
    class Events
      # Creates or uses an existing event and records an event occurrence for an end
      # user. Requires a valid API key for authentication.
      #
      # @overload new(name:, user_id:, properties: nil, timestamp: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param user_id [String] External user ID
      #
      # @param properties [Hash{Symbol=>Object, nil}] Additional event properties
      #
      # @param timestamp [Time] Event timestamp (ISO 8601)
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::EventNewResponse]
      #
      # @see Userplex::Models::EventNewParams
      def new(params)
        parsed, options = Userplex::EventNewParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/event",
          body: parsed,
          model: Userplex::Models::EventNewResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Userplex::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

# frozen_string_literal: true

module Userplex
  module Resources
    class Events
      # Capture an event
      #
      # @overload capture(name:, data: nil, timestamp: nil, user_id: nil, request_options: {})
      #
      # @param name [String]
      # @param data [Hash{Symbol=>Object, nil}]
      # @param timestamp [Time]
      # @param user_id [String]
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::EventCaptureResponse]
      #
      # @see Userplex::Models::EventCaptureParams
      def capture(params)
        parsed, options = Userplex::EventCaptureParams.dump_request(params)
        @client.request(
          method: :post,
          path: "capture",
          body: parsed,
          model: Userplex::Models::EventCaptureResponse,
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

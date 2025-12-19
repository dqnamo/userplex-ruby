# frozen_string_literal: true

module Userplex
  module Resources
    class Logs
      # Records multiple log occurrences in a single request. Requires a valid API key
      # for authentication.
      #
      # @overload batch(logs:, request_options: {})
      #
      # @param logs [Array<Userplex::Models::LogBatchParams::Log>] List of logs to track
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::LogBatchResponse]
      #
      # @see Userplex::Models::LogBatchParams
      def batch(params)
        parsed, options = Userplex::LogBatchParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/logs/batch",
          body: parsed,
          model: Userplex::Models::LogBatchResponse,
          options: options
        )
      end

      # Creates or uses an existing log and records a log occurrence for an end user.
      # Requires a valid API key for authentication.
      #
      # @overload new(name:, user_id:, data: nil, properties: nil, timestamp: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param user_id [String] External user ID
      #
      # @param data [Hash{Symbol=>Object, nil}] Additional log data
      #
      # @param properties [Hash{Symbol=>Object, nil}] Alias for data, for compatibility
      #
      # @param timestamp [Time] Log timestamp (ISO 8601)
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::LogNewResponse]
      #
      # @see Userplex::Models::LogNewParams
      def new(params)
        parsed, options = Userplex::LogNewParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/log",
          body: parsed,
          model: Userplex::Models::LogNewResponse,
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

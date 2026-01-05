# frozen_string_literal: true

module Userplex
  module Resources
    class Logs
      # @overload batch(body: nil, request_options: {})
      #
      # @param body [Array<Userplex::Models::LogBatchParams::Body>] A list of logs to ingest
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::LogBatchResponse]
      #
      # @see Userplex::Models::LogBatchParams
      def batch(params = {})
        parsed, options = Userplex::LogBatchParams.dump_request(params)
        @client.request(
          method: :post,
          path: "logs",
          body: parsed[:body],
          model: Userplex::Models::LogBatchResponse,
          options: options
        )
      end

      # @overload new(name:, data: nil, timestamp: nil, user_id: nil, request_options: {})
      #
      # @param name [String] Log name
      #
      # @param data [Hash{Symbol=>Object, nil}] Additional log data
      #
      # @param timestamp [Time] Log timestamp (ISO 8601)
      #
      # @param user_id [String] External user ID
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
          path: "log",
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

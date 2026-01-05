# frozen_string_literal: true

module Userplex
  module Resources
    class Logs
      # Log multiple events
      #
      # @overload batch(body: nil, request_options: {})
      #
      # @param body [Array<Userplex::Models::LogBatchParams::Body>]
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

      # Log a single event
      #
      # @overload new(name:, data: nil, timestamp: nil, user_id: nil, request_options: {})
      #
      # @param name [String]
      # @param data [Hash{Symbol=>Object, nil}]
      # @param timestamp [Time]
      # @param user_id [String]
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

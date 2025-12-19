# typed: strong

module Userplex
  module Resources
    class Logs
      # Records multiple log occurrences in a single request. Requires a valid API key
      # for authentication.
      sig do
        params(
          logs: T::Array[Userplex::LogBatchParams::Log::OrHash],
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::LogBatchResponse)
      end
      def batch(
        # List of logs to track
        logs:,
        request_options: {}
      )
      end

      # Creates or uses an existing log and records a log occurrence for an end user.
      # Requires a valid API key for authentication.
      sig do
        params(
          name: String,
          user_id: String,
          data: T::Hash[Symbol, T.nilable(T.anything)],
          properties: T::Hash[Symbol, T.nilable(T.anything)],
          timestamp: Time,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::LogNewResponse)
      end
      def new(
        name:,
        # External user ID
        user_id:,
        # Additional log data
        data: nil,
        # Alias for data, for compatibility
        properties: nil,
        # Log timestamp (ISO 8601)
        timestamp: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Userplex::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

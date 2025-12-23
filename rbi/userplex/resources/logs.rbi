# typed: strong

module Userplex
  module Resources
    class Logs
      sig do
        params(
          body: T::Array[Userplex::LogBatchParams::Body::OrHash],
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::LogBatchResponse)
      end
      def batch(
        # A list of logs to ingest
        body: nil,
        request_options: {}
      )
      end

      sig do
        params(
          name: String,
          data: T::Hash[Symbol, T.anything],
          timestamp: Time,
          user_id: String,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::LogNewResponse)
      end
      def new(
        # Log name
        name:,
        # Additional log data
        data: nil,
        # Log timestamp (ISO 8601)
        timestamp: nil,
        # External user ID
        user_id: nil,
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

# typed: strong

module Userplex
  module Resources
    class Logs
      # Log multiple events
      sig do
        params(
          body: T::Array[Userplex::LogBatchParams::Body::OrHash],
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::LogBatchResponse)
      end
      def batch(body: nil, request_options: {})
      end

      # Log a single event
      sig do
        params(
          name: String,
          data: T::Hash[Symbol, T.nilable(T.anything)],
          timestamp: Time,
          user_id: String,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::LogNewResponse)
      end
      def new(
        name:,
        data: nil,
        timestamp: nil,
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

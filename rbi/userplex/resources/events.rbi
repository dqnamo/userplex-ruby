# typed: strong

module Userplex
  module Resources
    class Events
      # Capture an event
      sig do
        params(
          name: String,
          data: T::Hash[Symbol, T.nilable(T.anything)],
          timestamp: Time,
          user_id: String,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::EventCaptureResponse)
      end
      def capture(
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

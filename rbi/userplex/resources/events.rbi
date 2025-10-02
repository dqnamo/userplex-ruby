# typed: strong

module Userplex
  module Resources
    class Events
      # Creates or uses an existing event and records an event occurrence for an end
      # user. Requires a valid API key for authentication.
      sig do
        params(
          event: String,
          user_id: String,
          properties: T::Hash[Symbol, T.nilable(T.anything)],
          timestamp: Time,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::EventTrackResponse)
      end
      def track(
        # Event name
        event:,
        # External user ID
        user_id:,
        # Event metadata
        properties: nil,
        # Event timestamp (ISO 8601)
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

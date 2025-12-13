# typed: strong

module Userplex
  module Resources
    class Events
      # Creates or uses an existing event and records an event occurrence for an end
      # user. Requires a valid API key for authentication.
      sig do
        params(
          name: String,
          user_id: String,
          properties: T::Hash[Symbol, T.nilable(T.anything)],
          timestamp: Time,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::EventNewResponse)
      end
      def new(
        name:,
        # External user ID
        user_id:,
        # Additional event properties
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

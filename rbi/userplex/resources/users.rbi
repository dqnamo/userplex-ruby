# typed: strong

module Userplex
  module Resources
    class Users
      # Creates or updates an end user in InstantDB with the provided information.
      # Requires a valid API key for authentication.
      sig do
        params(
          user_id: String,
          email: String,
          name: String,
          properties: T::Hash[Symbol, T.nilable(T.anything)],
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::UserIdentifyResponse)
      end
      def identify(
        # Unique identifier for the user
        user_id:,
        # User email address
        email: nil,
        # User full name
        name: nil,
        # Additional user properties
        properties: nil,
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

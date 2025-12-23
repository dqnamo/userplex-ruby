# typed: strong

module Userplex
  module Resources
    class Users
      sig do
        params(
          user_id: String,
          attributes: T::Hash[Symbol, T.anything],
          email: String,
          name: String,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(Userplex::Models::UserIdentifyResponse)
      end
      def identify(
        # External user ID
        user_id:,
        # Additional user attributes
        attributes: nil,
        # User email
        email: nil,
        # User name
        name: nil,
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

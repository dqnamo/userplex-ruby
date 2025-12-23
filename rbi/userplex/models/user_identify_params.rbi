# typed: strong

module Userplex
  module Models
    class UserIdentifyParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Userplex::UserIdentifyParams, Userplex::Internal::AnyHash)
        end

      # External user ID
      sig { returns(String) }
      attr_accessor :user_id

      # Additional user attributes
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :attributes

      sig { params(attributes: T::Hash[Symbol, T.anything]).void }
      attr_writer :attributes

      # User email
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # User name
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          user_id: String,
          attributes: T::Hash[Symbol, T.anything],
          email: String,
          name: String,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            user_id: String,
            attributes: T::Hash[Symbol, T.anything],
            email: String,
            name: String,
            request_options: Userplex::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

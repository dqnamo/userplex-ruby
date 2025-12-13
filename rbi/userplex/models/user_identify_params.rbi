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

      # Unique identifier for the user
      sig { returns(String) }
      attr_accessor :user_id

      # User email address
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # User full name
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Additional user properties
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
      attr_reader :properties

      sig { params(properties: T::Hash[Symbol, T.nilable(T.anything)]).void }
      attr_writer :properties

      sig do
        params(
          user_id: String,
          email: String,
          name: String,
          properties: T::Hash[Symbol, T.nilable(T.anything)],
          request_options: Userplex::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            user_id: String,
            email: String,
            name: String,
            properties: T::Hash[Symbol, T.nilable(T.anything)],
            request_options: Userplex::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

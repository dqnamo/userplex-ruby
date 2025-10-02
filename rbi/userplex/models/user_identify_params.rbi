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

      # User email address
      sig { returns(String) }
      attr_accessor :email

      # User full name
      sig { returns(String) }
      attr_accessor :name

      # Unique identifier for the user
      sig { returns(String) }
      attr_accessor :user_id

      # Additional user properties
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
      attr_reader :properties

      sig { params(properties: T::Hash[Symbol, T.nilable(T.anything)]).void }
      attr_writer :properties

      sig do
        params(
          email: String,
          name: String,
          user_id: String,
          properties: T::Hash[Symbol, T.nilable(T.anything)],
          request_options: Userplex::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # User email address
        email:,
        # User full name
        name:,
        # Unique identifier for the user
        user_id:,
        # Additional user properties
        properties: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: String,
            name: String,
            user_id: String,
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

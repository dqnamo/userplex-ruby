# typed: strong

module Userplex
  module Models
    class UserCreateWithListParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Userplex::UserCreateWithListParams, Userplex::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[Userplex::User])) }
      attr_reader :items

      sig { params(items: T::Array[Userplex::User::OrHash]).void }
      attr_writer :items

      sig do
        params(
          items: T::Array[Userplex::User::OrHash],
          request_options: Userplex::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(items: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            items: T::Array[Userplex::User],
            request_options: Userplex::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

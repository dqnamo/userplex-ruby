# typed: strong

module Userplex
  module Models
    class UserDeleteParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Userplex::UserDeleteParams, Userplex::Internal::AnyHash)
        end

      sig do
        params(request_options: Userplex::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Userplex::RequestOptions }) }
      def to_hash
      end
    end
  end
end

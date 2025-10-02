# typed: strong

module Userplex
  module Models
    class PetUploadImageParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Userplex::PetUploadImageParams, Userplex::Internal::AnyHash)
        end

      sig { returns(Userplex::Internal::FileInput) }
      attr_accessor :image

      # Additional Metadata
      sig { returns(T.nilable(String)) }
      attr_reader :additional_metadata

      sig { params(additional_metadata: String).void }
      attr_writer :additional_metadata

      sig do
        params(
          image: Userplex::Internal::FileInput,
          additional_metadata: String,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        image:,
        # Additional Metadata
        additional_metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            image: Userplex::Internal::FileInput,
            additional_metadata: String,
            request_options: Userplex::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

# typed: strong

module Userplex
  module Models
    class PetFindByStatusParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Userplex::PetFindByStatusParams, Userplex::Internal::AnyHash)
        end

      # Status values that need to be considered for filter
      sig do
        returns(T.nilable(Userplex::PetFindByStatusParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Userplex::PetFindByStatusParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          status: Userplex::PetFindByStatusParams::Status::OrSymbol,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Status values that need to be considered for filter
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: Userplex::PetFindByStatusParams::Status::OrSymbol,
            request_options: Userplex::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Status values that need to be considered for filter
      module Status
        extend Userplex::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Userplex::PetFindByStatusParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE =
          T.let(
            :available,
            Userplex::PetFindByStatusParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(:pending, Userplex::PetFindByStatusParams::Status::TaggedSymbol)
        SOLD =
          T.let(:sold, Userplex::PetFindByStatusParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Userplex::PetFindByStatusParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

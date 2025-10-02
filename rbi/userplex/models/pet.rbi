# typed: strong

module Userplex
  module Models
    class Pet < Userplex::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Userplex::Pet, Userplex::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[String]) }
      attr_accessor :photo_urls

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(Userplex::Category)) }
      attr_reader :category

      sig { params(category: Userplex::Category::OrHash).void }
      attr_writer :category

      # pet status in the store
      sig { returns(T.nilable(Userplex::Pet::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Userplex::Pet::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(T::Array[Userplex::Pet::Tag])) }
      attr_reader :tags

      sig { params(tags: T::Array[Userplex::Pet::Tag::OrHash]).void }
      attr_writer :tags

      sig do
        params(
          name: String,
          photo_urls: T::Array[String],
          id: Integer,
          category: Userplex::Category::OrHash,
          status: Userplex::Pet::Status::OrSymbol,
          tags: T::Array[Userplex::Pet::Tag::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        photo_urls:,
        id: nil,
        category: nil,
        # pet status in the store
        status: nil,
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            photo_urls: T::Array[String],
            id: Integer,
            category: Userplex::Category,
            status: Userplex::Pet::Status::TaggedSymbol,
            tags: T::Array[Userplex::Pet::Tag]
          }
        )
      end
      def to_hash
      end

      # pet status in the store
      module Status
        extend Userplex::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Userplex::Pet::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE = T.let(:available, Userplex::Pet::Status::TaggedSymbol)
        PENDING = T.let(:pending, Userplex::Pet::Status::TaggedSymbol)
        SOLD = T.let(:sold, Userplex::Pet::Status::TaggedSymbol)

        sig { override.returns(T::Array[Userplex::Pet::Status::TaggedSymbol]) }
        def self.values
        end
      end

      class Tag < Userplex::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Userplex::Pet::Tag, Userplex::Internal::AnyHash)
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(id: Integer, name: String).returns(T.attached_class) }
        def self.new(id: nil, name: nil)
        end

        sig { override.returns({ id: Integer, name: String }) }
        def to_hash
        end
      end
    end
  end
end

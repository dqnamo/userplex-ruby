# typed: strong

module Userplex
  module Models
    class Order < Userplex::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Userplex::Order, Userplex::Internal::AnyHash) }

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :complete

      sig { params(complete: T::Boolean).void }
      attr_writer :complete

      sig { returns(T.nilable(Integer)) }
      attr_reader :pet_id

      sig { params(pet_id: Integer).void }
      attr_writer :pet_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :quantity

      sig { params(quantity: Integer).void }
      attr_writer :quantity

      sig { returns(T.nilable(Time)) }
      attr_reader :ship_date

      sig { params(ship_date: Time).void }
      attr_writer :ship_date

      # Order Status
      sig { returns(T.nilable(Userplex::Order::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Userplex::Order::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          id: Integer,
          complete: T::Boolean,
          pet_id: Integer,
          quantity: Integer,
          ship_date: Time,
          status: Userplex::Order::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        complete: nil,
        pet_id: nil,
        quantity: nil,
        ship_date: nil,
        # Order Status
        status: nil
      )
      end

      sig do
        override.returns(
          {
            id: Integer,
            complete: T::Boolean,
            pet_id: Integer,
            quantity: Integer,
            ship_date: Time,
            status: Userplex::Order::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Order Status
      module Status
        extend Userplex::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Userplex::Order::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLACED = T.let(:placed, Userplex::Order::Status::TaggedSymbol)
        APPROVED = T.let(:approved, Userplex::Order::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, Userplex::Order::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Userplex::Order::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end

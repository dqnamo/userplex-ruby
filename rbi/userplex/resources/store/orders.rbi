# typed: strong

module Userplex
  module Resources
    class Store
      class Orders
        # Place a new order in the store
        sig do
          params(
            id: Integer,
            complete: T::Boolean,
            pet_id: Integer,
            quantity: Integer,
            ship_date: Time,
            status: Userplex::Order::Status::OrSymbol,
            request_options: Userplex::RequestOptions::OrHash
          ).returns(Userplex::Order)
        end
        def create(
          id: nil,
          complete: nil,
          pet_id: nil,
          quantity: nil,
          ship_date: nil,
          # Order Status
          status: nil,
          request_options: {}
        )
        end

        # For valid response try integer IDs with value <= 5 or > 10. Other values will
        # generate exceptions.
        sig do
          params(
            order_id: Integer,
            request_options: Userplex::RequestOptions::OrHash
          ).returns(Userplex::Order)
        end
        def retrieve(
          # ID of order that needs to be fetched
          order_id,
          request_options: {}
        )
        end

        # For valid response try integer IDs with value < 1000. Anything above 1000 or
        # nonintegers will generate API errors
        sig do
          params(
            order_id: Integer,
            request_options: Userplex::RequestOptions::OrHash
          ).void
        end
        def delete(
          # ID of the order that needs to be deleted
          order_id,
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
end

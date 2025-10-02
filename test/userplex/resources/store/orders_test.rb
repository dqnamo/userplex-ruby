# frozen_string_literal: true

require_relative "../../test_helper"

class Userplex::Test::Resources::Store::OrdersTest < Userplex::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @userplex.store.orders.create

    assert_pattern do
      response => Userplex::Order
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: Userplex::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: Userplex::Order::Status | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @userplex.store.orders.retrieve(0)

    assert_pattern do
      response => Userplex::Order
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: Userplex::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: Userplex::Order::Status | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @userplex.store.orders.delete(0)

    assert_pattern do
      response => nil
    end
  end
end

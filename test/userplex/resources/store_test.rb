# frozen_string_literal: true

require_relative "../test_helper"

class Userplex::Test::Resources::StoreTest < Userplex::Test::ResourceTest
  def test_list_inventory
    skip("Prism tests are disabled")

    response = @userplex.store.list_inventory

    assert_pattern do
      response => ^(Userplex::Internal::Type::HashOf[Integer])
    end
  end
end

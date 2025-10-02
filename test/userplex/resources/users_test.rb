# frozen_string_literal: true

require_relative "../test_helper"

class Userplex::Test::Resources::UsersTest < Userplex::Test::ResourceTest
  def test_identify_required_params
    skip("Prism tests are disabled")

    response = @userplex.users.identify(email: "dev@stainless.com", name: "name", user_id: "userId")

    assert_pattern do
      response => Userplex::Models::UserIdentifyResponse
    end

    assert_pattern do
      response => {
        success: Userplex::Internal::Type::Boolean,
        user_id: String
      }
    end
  end
end

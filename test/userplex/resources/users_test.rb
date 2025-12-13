# frozen_string_literal: true

require_relative "../test_helper"

class Userplex::Test::Resources::UsersTest < Userplex::Test::ResourceTest
  def test_identify_required_params
    skip("Prism tests are disabled")

    response = @userplex.users.identify(user_id: "user_id")

    assert_pattern do
      response => Userplex::Models::UserIdentifyResponse
    end

    assert_pattern do
      response => {
        success: Userplex::Internal::Type::Boolean
      }
    end
  end
end

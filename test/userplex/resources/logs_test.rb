# frozen_string_literal: true

require_relative "../test_helper"

class Userplex::Test::Resources::LogsTest < Userplex::Test::ResourceTest
  def test_batch_required_params
    skip("Prism tests are disabled")

    response = @userplex.logs.batch(logs: [{name: "name", user_id: "user_id"}])

    assert_pattern do
      response => Userplex::Models::LogBatchResponse
    end

    assert_pattern do
      response => {
        count: Float,
        success: Userplex::Internal::Type::Boolean
      }
    end
  end

  def test_new_required_params
    skip("Prism tests are disabled")

    response = @userplex.logs.new(name: "name", user_id: "user_id")

    assert_pattern do
      response => Userplex::Models::LogNewResponse
    end

    assert_pattern do
      response => {
        success: Userplex::Internal::Type::Boolean
      }
    end
  end
end

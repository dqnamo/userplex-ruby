# frozen_string_literal: true

require_relative "../test_helper"

class Userplex::Test::Resources::EventsTest < Userplex::Test::ResourceTest
  def test_capture_required_params
    skip("Prism tests are disabled")

    response = @userplex.events.capture(name: "name")

    assert_pattern do
      response => Userplex::Models::EventCaptureResponse
    end

    assert_pattern do
      response => {
        success: Userplex::Internal::Type::Boolean
      }
    end
  end
end

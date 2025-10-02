# frozen_string_literal: true

require_relative "../test_helper"

class Userplex::Test::Resources::EventsTest < Userplex::Test::ResourceTest
  def test_track_required_params
    skip("Prism tests are disabled")

    response = @userplex.events.track(event: "event", user_id: "userId")

    assert_pattern do
      response => Userplex::Models::EventTrackResponse
    end

    assert_pattern do
      response => {
        event_id: String,
        occurrence_id: String,
        success: Userplex::Internal::Type::Boolean
      }
    end
  end
end

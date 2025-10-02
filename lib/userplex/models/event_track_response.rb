# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Events#track
    class EventTrackResponse < Userplex::Internal::Type::BaseModel
      # @!attribute event_id
      #   The event ID
      #
      #   @return [String]
      required :event_id, String, api_name: :eventId

      # @!attribute occurrence_id
      #   The event occurrence ID
      #
      #   @return [String]
      required :occurrence_id, String, api_name: :occurrenceId

      # @!attribute success
      #   Whether the operation was successful
      #
      #   @return [Boolean]
      required :success, Userplex::Internal::Type::Boolean

      # @!method initialize(event_id:, occurrence_id:, success:)
      #   @param event_id [String] The event ID
      #
      #   @param occurrence_id [String] The event occurrence ID
      #
      #   @param success [Boolean] Whether the operation was successful
    end
  end
end

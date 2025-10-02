# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Events#track
    class EventTrackParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute event
      #   Event name
      #
      #   @return [String]
      required :event, String

      # @!attribute user_id
      #   External user ID
      #
      #   @return [String]
      required :user_id, String, api_name: :userId

      # @!attribute properties
      #   Event metadata
      #
      #   @return [Hash{Symbol=>Object, nil}, nil]
      optional :properties, Userplex::Internal::Type::HashOf[Userplex::Internal::Type::Unknown, nil?: true]

      # @!attribute timestamp
      #   Event timestamp (ISO 8601)
      #
      #   @return [Time, nil]
      optional :timestamp, Time

      # @!method initialize(event:, user_id:, properties: nil, timestamp: nil, request_options: {})
      #   @param event [String] Event name
      #
      #   @param user_id [String] External user ID
      #
      #   @param properties [Hash{Symbol=>Object, nil}] Event metadata
      #
      #   @param timestamp [Time] Event timestamp (ISO 8601)
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

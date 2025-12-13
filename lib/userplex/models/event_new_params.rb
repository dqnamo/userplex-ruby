# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Events#new
    class EventNewParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute user_id
      #   External user ID
      #
      #   @return [String]
      required :user_id, String

      # @!attribute timestamp
      #   Event timestamp (ISO 8601)
      #
      #   @return [Time, nil]
      optional :timestamp, Time

      # @!method initialize(name:, user_id:, timestamp: nil, request_options: {})
      #   @param name [String]
      #
      #   @param user_id [String] External user ID
      #
      #   @param timestamp [Time] Event timestamp (ISO 8601)
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

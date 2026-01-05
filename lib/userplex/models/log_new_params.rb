# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Logs#new
    class LogNewParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute name
      #   Log name
      #
      #   @return [String]
      required :name, String

      # @!attribute data
      #   Additional log data
      #
      #   @return [Hash{Symbol=>Object, nil}, nil]
      optional :data, Userplex::Internal::Type::HashOf[Userplex::Internal::Type::Unknown, nil?: true]

      # @!attribute timestamp
      #   Log timestamp (ISO 8601)
      #
      #   @return [Time, nil]
      optional :timestamp, Time

      # @!attribute user_id
      #   External user ID
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(name:, data: nil, timestamp: nil, user_id: nil, request_options: {})
      #   @param name [String] Log name
      #
      #   @param data [Hash{Symbol=>Object, nil}] Additional log data
      #
      #   @param timestamp [Time] Log timestamp (ISO 8601)
      #
      #   @param user_id [String] External user ID
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

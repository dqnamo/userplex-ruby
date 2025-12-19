# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Logs#new
    class LogNewParams < Userplex::Internal::Type::BaseModel
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

      # @!attribute data
      #   Additional log data
      #
      #   @return [Hash{Symbol=>Object, nil}, nil]
      optional :data, Userplex::Internal::Type::HashOf[Userplex::Internal::Type::Unknown, nil?: true]

      # @!attribute properties
      #   Alias for data, for compatibility
      #
      #   @return [Hash{Symbol=>Object, nil}, nil]
      optional :properties, Userplex::Internal::Type::HashOf[Userplex::Internal::Type::Unknown, nil?: true]

      # @!attribute timestamp
      #   Log timestamp (ISO 8601)
      #
      #   @return [Time, nil]
      optional :timestamp, Time

      # @!method initialize(name:, user_id:, data: nil, properties: nil, timestamp: nil, request_options: {})
      #   @param name [String]
      #
      #   @param user_id [String] External user ID
      #
      #   @param data [Hash{Symbol=>Object, nil}] Additional log data
      #
      #   @param properties [Hash{Symbol=>Object, nil}] Alias for data, for compatibility
      #
      #   @param timestamp [Time] Log timestamp (ISO 8601)
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Logs#batch
    class LogBatchParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute body
      #   A list of logs to ingest
      #
      #   @return [Array<Userplex::Models::LogBatchParams::Body>, nil]
      optional :body, -> { Userplex::Internal::Type::ArrayOf[Userplex::LogBatchParams::Body] }

      # @!method initialize(body: nil, request_options: {})
      #   @param body [Array<Userplex::Models::LogBatchParams::Body>] A list of logs to ingest
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]

      class Body < Userplex::Internal::Type::BaseModel
        # @!attribute name
        #   Log name
        #
        #   @return [String]
        required :name, String

        # @!attribute data
        #   Additional log data
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :data, Userplex::Internal::Type::HashOf[Userplex::Internal::Type::Unknown]

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

        # @!method initialize(name:, data: nil, timestamp: nil, user_id: nil)
        #   @param name [String] Log name
        #
        #   @param data [Hash{Symbol=>Object}] Additional log data
        #
        #   @param timestamp [Time] Log timestamp (ISO 8601)
        #
        #   @param user_id [String] External user ID
      end
    end
  end
end

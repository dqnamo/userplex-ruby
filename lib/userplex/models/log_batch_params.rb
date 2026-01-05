# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Logs#batch
    class LogBatchParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Userplex::Models::LogBatchParams::Body>, nil]
      optional :body, -> { Userplex::Internal::Type::ArrayOf[Userplex::LogBatchParams::Body] }

      # @!method initialize(body: nil, request_options: {})
      #   @param body [Array<Userplex::Models::LogBatchParams::Body>]
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]

      class Body < Userplex::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute data
        #
        #   @return [Hash{Symbol=>Object, nil}, nil]
        optional :data, Userplex::Internal::Type::HashOf[Userplex::Internal::Type::Unknown, nil?: true]

        # @!attribute timestamp
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!attribute user_id
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!method initialize(name:, data: nil, timestamp: nil, user_id: nil)
        #   @param name [String]
        #   @param data [Hash{Symbol=>Object, nil}]
        #   @param timestamp [Time]
        #   @param user_id [String]
      end
    end
  end
end

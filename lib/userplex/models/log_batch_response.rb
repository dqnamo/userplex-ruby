# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Logs#batch
    class LogBatchResponse < Userplex::Internal::Type::BaseModel
      # @!attribute count
      #   Number of logs processed
      #
      #   @return [Float]
      required :count, Float

      # @!attribute success
      #   Operation success status
      #
      #   @return [Boolean]
      required :success, Userplex::Internal::Type::Boolean

      # @!method initialize(count:, success:)
      #   @param count [Float] Number of logs processed
      #
      #   @param success [Boolean] Operation success status
    end
  end
end

# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Logs#batch
    class LogBatchResponse < Userplex::Internal::Type::BaseModel
      # @!attribute success
      #
      #   @return [Boolean]
      required :success, Userplex::Internal::Type::Boolean

      # @!method initialize(success:)
      #   @param success [Boolean]
    end
  end
end

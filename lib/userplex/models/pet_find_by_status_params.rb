# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Pets#find_by_status
    class PetFindByStatusParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute status
      #   Status values that need to be considered for filter
      #
      #   @return [Symbol, Userplex::Models::PetFindByStatusParams::Status, nil]
      optional :status, enum: -> { Userplex::PetFindByStatusParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, Userplex::Models::PetFindByStatusParams::Status] Status values that need to be considered for filter
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]

      # Status values that need to be considered for filter
      module Status
        extend Userplex::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

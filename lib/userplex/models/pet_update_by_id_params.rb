# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Pets#update_by_id
    class PetUpdateByIDParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute name
      #   Name of pet that needs to be updated
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute status
      #   Status of pet that needs to be updated
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(name: nil, status: nil, request_options: {})
      #   @param name [String] Name of pet that needs to be updated
      #
      #   @param status [String] Status of pet that needs to be updated
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

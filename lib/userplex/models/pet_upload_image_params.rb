# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Pets#upload_image
    class PetUploadImageParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute image
      #
      #   @return [Pathname, StringIO, IO, String, Userplex::FilePart]
      required :image, Userplex::Internal::Type::FileInput

      # @!attribute additional_metadata
      #   Additional Metadata
      #
      #   @return [String, nil]
      optional :additional_metadata, String

      # @!method initialize(image:, additional_metadata: nil, request_options: {})
      #   @param image [Pathname, StringIO, IO, String, Userplex::FilePart]
      #
      #   @param additional_metadata [String] Additional Metadata
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

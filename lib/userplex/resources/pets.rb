# frozen_string_literal: true

module Userplex
  module Resources
    class Pets
      # Add a new pet to the store
      #
      # @overload create(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param photo_urls [Array<String>]
      #
      # @param id [Integer]
      #
      # @param category [Userplex::Models::Category]
      #
      # @param status [Symbol, Userplex::Models::Pet::Status] pet status in the store
      #
      # @param tags [Array<Userplex::Models::Pet::Tag>]
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::Pet]
      #
      # @see Userplex::Models::PetCreateParams
      def create(params)
        parsed, options = Userplex::PetCreateParams.dump_request(params)
        @client.request(method: :post, path: "pet", body: parsed, model: Userplex::Pet, options: options)
      end

      # Returns a single pet
      #
      # @overload retrieve(pet_id, request_options: {})
      #
      # @param pet_id [Integer] ID of pet to return
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::Pet]
      #
      # @see Userplex::Models::PetRetrieveParams
      def retrieve(pet_id, params = {})
        @client.request(
          method: :get,
          path: ["pet/%1$s", pet_id],
          model: Userplex::Pet,
          options: params[:request_options]
        )
      end

      # Update an existing pet by Id
      #
      # @overload update(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param photo_urls [Array<String>]
      #
      # @param id [Integer]
      #
      # @param category [Userplex::Models::Category]
      #
      # @param status [Symbol, Userplex::Models::Pet::Status] pet status in the store
      #
      # @param tags [Array<Userplex::Models::Pet::Tag>]
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::Pet]
      #
      # @see Userplex::Models::PetUpdateParams
      def update(params)
        parsed, options = Userplex::PetUpdateParams.dump_request(params)
        @client.request(method: :put, path: "pet", body: parsed, model: Userplex::Pet, options: options)
      end

      # delete a pet
      #
      # @overload delete(pet_id, request_options: {})
      #
      # @param pet_id [Integer] Pet id to delete
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Userplex::Models::PetDeleteParams
      def delete(pet_id, params = {})
        @client.request(
          method: :delete,
          path: ["pet/%1$s", pet_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Multiple status values can be provided with comma separated strings
      #
      # @overload find_by_status(status: nil, request_options: {})
      #
      # @param status [Symbol, Userplex::Models::PetFindByStatusParams::Status] Status values that need to be considered for filter
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Userplex::Models::Pet>]
      #
      # @see Userplex::Models::PetFindByStatusParams
      def find_by_status(params = {})
        parsed, options = Userplex::PetFindByStatusParams.dump_request(params)
        @client.request(
          method: :get,
          path: "pet/findByStatus",
          query: parsed,
          model: Userplex::Internal::Type::ArrayOf[Userplex::Pet],
          options: options
        )
      end

      # Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3
      # for testing.
      #
      # @overload find_by_tags(tags: nil, request_options: {})
      #
      # @param tags [Array<String>] Tags to filter by
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Userplex::Models::Pet>]
      #
      # @see Userplex::Models::PetFindByTagsParams
      def find_by_tags(params = {})
        parsed, options = Userplex::PetFindByTagsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "pet/findByTags",
          query: parsed,
          model: Userplex::Internal::Type::ArrayOf[Userplex::Pet],
          options: options
        )
      end

      # Updates a pet in the store with form data
      #
      # @overload update_by_id(pet_id, name: nil, status: nil, request_options: {})
      #
      # @param pet_id [Integer] ID of pet that needs to be updated
      #
      # @param name [String] Name of pet that needs to be updated
      #
      # @param status [String] Status of pet that needs to be updated
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Userplex::Models::PetUpdateByIDParams
      def update_by_id(pet_id, params = {})
        parsed, options = Userplex::PetUpdateByIDParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["pet/%1$s", pet_id],
          query: parsed,
          model: NilClass,
          options: options
        )
      end

      # uploads an image
      #
      # @overload upload_image(pet_id, image:, additional_metadata: nil, request_options: {})
      #
      # @param pet_id [Integer] Path param: ID of pet to update
      #
      # @param image [Pathname, StringIO, IO, String, Userplex::FilePart] Body param:
      #
      # @param additional_metadata [String] Query param: Additional Metadata
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::PetUploadImageResponse]
      #
      # @see Userplex::Models::PetUploadImageParams
      def upload_image(pet_id, params)
        parsed, options = Userplex::PetUploadImageParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["pet/%1$s/uploadImage", pet_id],
          query: parsed.except(:image).transform_keys(additional_metadata: "additionalMetadata"),
          headers: {"content-type" => "application/octet-stream"},
          body: parsed[:image],
          model: Userplex::Models::PetUploadImageResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Userplex::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

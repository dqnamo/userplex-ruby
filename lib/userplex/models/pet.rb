# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Pets#create
    class Pet < Userplex::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute photo_urls
      #
      #   @return [Array<String>]
      required :photo_urls, Userplex::Internal::Type::ArrayOf[String], api_name: :photoUrls

      # @!attribute id
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute category
      #
      #   @return [Userplex::Models::Category, nil]
      optional :category, -> { Userplex::Category }

      # @!attribute status
      #   pet status in the store
      #
      #   @return [Symbol, Userplex::Models::Pet::Status, nil]
      optional :status, enum: -> { Userplex::Pet::Status }

      # @!attribute tags
      #
      #   @return [Array<Userplex::Models::Pet::Tag>, nil]
      optional :tags, -> { Userplex::Internal::Type::ArrayOf[Userplex::Pet::Tag] }

      # @!method initialize(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil)
      #   @param name [String]
      #
      #   @param photo_urls [Array<String>]
      #
      #   @param id [Integer]
      #
      #   @param category [Userplex::Models::Category]
      #
      #   @param status [Symbol, Userplex::Models::Pet::Status] pet status in the store
      #
      #   @param tags [Array<Userplex::Models::Pet::Tag>]

      # pet status in the store
      #
      # @see Userplex::Models::Pet#status
      module Status
        extend Userplex::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Tag < Userplex::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, name: nil)
        #   @param id [Integer]
        #   @param name [String]
      end
    end
  end
end

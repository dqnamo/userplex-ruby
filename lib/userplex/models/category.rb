# frozen_string_literal: true

module Userplex
  module Models
    class Category < Userplex::Internal::Type::BaseModel
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

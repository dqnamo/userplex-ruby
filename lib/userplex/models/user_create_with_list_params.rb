# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Users#create_with_list
    class UserCreateWithListParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute items
      #
      #   @return [Array<Userplex::Models::User>, nil]
      optional :items, -> { Userplex::Internal::Type::ArrayOf[Userplex::User] }

      # @!method initialize(items: nil, request_options: {})
      #   @param items [Array<Userplex::Models::User>]
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

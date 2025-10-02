# frozen_string_literal: true

module Userplex
  module Models
    # @type [Userplex::Internal::Type::Converter]
    PetFindByTagsResponse = Userplex::Internal::Type::ArrayOf[-> { Userplex::Pet }]
  end
end

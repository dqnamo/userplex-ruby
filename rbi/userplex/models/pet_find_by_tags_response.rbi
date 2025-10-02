# typed: strong

module Userplex
  module Models
    PetFindByTagsResponse =
      T.let(
        Userplex::Internal::Type::ArrayOf[Userplex::Pet],
        Userplex::Internal::Type::Converter
      )
  end
end

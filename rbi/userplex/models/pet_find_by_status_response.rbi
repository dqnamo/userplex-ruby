# typed: strong

module Userplex
  module Models
    PetFindByStatusResponse =
      T.let(
        Userplex::Internal::Type::ArrayOf[Userplex::Pet],
        Userplex::Internal::Type::Converter
      )
  end
end

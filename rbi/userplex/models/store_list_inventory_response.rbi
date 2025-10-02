# typed: strong

module Userplex
  module Models
    StoreListInventoryResponse =
      T.let(
        Userplex::Internal::Type::HashOf[Integer],
        Userplex::Internal::Type::Converter
      )
  end
end

# frozen_string_literal: true

module Userplex
  [Userplex::Internal::Type::BaseModel, *Userplex::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Userplex::Internal::AnyHash) } }
  end

  Userplex::Internal::Util.walk_namespaces(Userplex::Models).each do |mod|
    case mod
    in Userplex::Internal::Type::Enum | Userplex::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Userplex::Internal::Util.walk_namespaces(Userplex::Models)
                          .lazy
                          .grep(Userplex::Internal::Type::Union)
                          .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Category = Userplex::Models::Category

  Order = Userplex::Models::Order

  Pet = Userplex::Models::Pet

  PetCreateParams = Userplex::Models::PetCreateParams

  PetDeleteParams = Userplex::Models::PetDeleteParams

  PetFindByStatusParams = Userplex::Models::PetFindByStatusParams

  PetFindByTagsParams = Userplex::Models::PetFindByTagsParams

  PetRetrieveParams = Userplex::Models::PetRetrieveParams

  PetUpdateByIDParams = Userplex::Models::PetUpdateByIDParams

  PetUpdateParams = Userplex::Models::PetUpdateParams

  PetUploadImageParams = Userplex::Models::PetUploadImageParams

  Store = Userplex::Models::Store

  StoreListInventoryParams = Userplex::Models::StoreListInventoryParams

  User = Userplex::Models::User

  UserCreateParams = Userplex::Models::UserCreateParams

  UserCreateWithListParams = Userplex::Models::UserCreateWithListParams

  UserDeleteParams = Userplex::Models::UserDeleteParams

  UserLoginParams = Userplex::Models::UserLoginParams

  UserLogoutParams = Userplex::Models::UserLogoutParams

  UserRetrieveParams = Userplex::Models::UserRetrieveParams

  UserUpdateParams = Userplex::Models::UserUpdateParams
end

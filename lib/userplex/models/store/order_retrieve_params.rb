# frozen_string_literal: true

module Userplex
  module Models
    module Store
      # @see Userplex::Resources::Store::Orders#retrieve
      class OrderRetrieveParams < Userplex::Internal::Type::BaseModel
        extend Userplex::Internal::Type::RequestParameters::Converter
        include Userplex::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

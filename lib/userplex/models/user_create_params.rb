# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Users#create
    class UserCreateParams < Userplex::Models::User
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

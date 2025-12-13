# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Users#identify
    class UserIdentifyResponse < Userplex::Internal::Type::BaseModel
      # @!attribute success
      #   Operation success status
      #
      #   @return [Boolean]
      required :success, Userplex::Internal::Type::Boolean

      # @!method initialize(success:)
      #   @param success [Boolean] Operation success status
    end
  end
end

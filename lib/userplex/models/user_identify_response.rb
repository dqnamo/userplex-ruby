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

      # @!attribute user_id
      #   The ID of the identified user
      #
      #   @return [String]
      required :user_id, String, api_name: :userId

      # @!method initialize(success:, user_id:)
      #   @param success [Boolean] Operation success status
      #
      #   @param user_id [String] The ID of the identified user
    end
  end
end

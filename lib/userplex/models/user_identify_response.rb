# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Users#identify
    class UserIdentifyResponse < Userplex::Internal::Type::BaseModel
      # @!attribute success
      #   Whether the operation was successful
      #
      #   @return [Boolean]
      required :success, Userplex::Internal::Type::Boolean

      # @!attribute user_id
      #   The identified user ID
      #
      #   @return [String]
      required :user_id, String, api_name: :userId

      # @!method initialize(success:, user_id:)
      #   @param success [Boolean] Whether the operation was successful
      #
      #   @param user_id [String] The identified user ID
    end
  end
end

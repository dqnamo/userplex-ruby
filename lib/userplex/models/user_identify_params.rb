# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Users#identify
    class UserIdentifyParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute user_id
      #   External user ID
      #
      #   @return [String]
      required :user_id, String

      # @!attribute attributes
      #   Additional user attributes
      #
      #   @return [Hash{Symbol=>Object, nil}, nil]
      optional :attributes, Userplex::Internal::Type::HashOf[Userplex::Internal::Type::Unknown, nil?: true]

      # @!attribute email
      #   User email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute name
      #   User name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(user_id:, attributes: nil, email: nil, name: nil, request_options: {})
      #   @param user_id [String] External user ID
      #
      #   @param attributes [Hash{Symbol=>Object, nil}] Additional user attributes
      #
      #   @param email [String] User email
      #
      #   @param name [String] User name
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

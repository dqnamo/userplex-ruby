# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Users#identify
    class UserIdentifyParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute email
      #   User email address
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #   User full name
      #
      #   @return [String]
      required :name, String

      # @!attribute user_id
      #   Unique identifier for the user
      #
      #   @return [String]
      required :user_id, String, api_name: :userId

      # @!attribute properties
      #   Additional user properties
      #
      #   @return [Hash{Symbol=>Object, nil}, nil]
      optional :properties, Userplex::Internal::Type::HashOf[Userplex::Internal::Type::Unknown, nil?: true]

      # @!method initialize(email:, name:, user_id:, properties: nil, request_options: {})
      #   @param email [String] User email address
      #
      #   @param name [String] User full name
      #
      #   @param user_id [String] Unique identifier for the user
      #
      #   @param properties [Hash{Symbol=>Object, nil}] Additional user properties
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

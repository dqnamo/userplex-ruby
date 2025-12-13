# frozen_string_literal: true

module Userplex
  module Models
    # @see Userplex::Resources::Users#identify
    class UserIdentifyParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      # @!attribute user_id
      #   Unique identifier for the user
      #
      #   @return [String]
      required :user_id, String

      # @!attribute email
      #   User email address
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute name
      #   User full name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute properties
      #   Additional user properties
      #
      #   @return [Hash{Symbol=>Object, nil}, nil]
      optional :properties, Userplex::Internal::Type::HashOf[Userplex::Internal::Type::Unknown, nil?: true]

      # @!method initialize(user_id:, email: nil, name: nil, properties: nil, request_options: {})
      #   @param user_id [String] Unique identifier for the user
      #
      #   @param email [String] User email address
      #
      #   @param name [String] User full name
      #
      #   @param properties [Hash{Symbol=>Object, nil}] Additional user properties
      #
      #   @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

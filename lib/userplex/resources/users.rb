# frozen_string_literal: true

module Userplex
  module Resources
    class Users
      # Creates or updates an end user in InstantDB with the provided information.
      # Requires a valid API key for authentication.
      #
      # @overload identify(email:, name:, user_id:, properties: nil, request_options: {})
      #
      # @param email [String] User email address
      #
      # @param name [String] User full name
      #
      # @param user_id [String] Unique identifier for the user
      #
      # @param properties [Hash{Symbol=>Object, nil}] Additional user properties
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::UserIdentifyResponse]
      #
      # @see Userplex::Models::UserIdentifyParams
      def identify(params)
        parsed, options = Userplex::UserIdentifyParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/identify",
          body: parsed,
          model: Userplex::Models::UserIdentifyResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Userplex::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

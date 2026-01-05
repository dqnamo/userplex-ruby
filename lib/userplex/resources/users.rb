# frozen_string_literal: true

module Userplex
  module Resources
    class Users
      # Identify a user
      #
      # @overload identify(user_id:, attributes: nil, email: nil, name: nil, request_options: {})
      #
      # @param user_id [String]
      # @param attributes [Hash{Symbol=>Object, nil}]
      # @param email [String]
      # @param name [String]
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Userplex::Models::UserIdentifyResponse]
      #
      # @see Userplex::Models::UserIdentifyParams
      def identify(params)
        parsed, options = Userplex::UserIdentifyParams.dump_request(params)
        @client.request(
          method: :post,
          path: "identify",
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

# frozen_string_literal: true

module Userplex
  module Resources
    class Store
      # @return [Userplex::Resources::Store::Orders]
      attr_reader :orders

      # Returns a map of status codes to quantities
      #
      # @overload list_inventory(request_options: {})
      #
      # @param request_options [Userplex::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Integer}]
      #
      # @see Userplex::Models::StoreListInventoryParams
      def list_inventory(params = {})
        @client.request(
          method: :get,
          path: "store/inventory",
          model: Userplex::Internal::Type::HashOf[Integer],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Userplex::Client]
      def initialize(client:)
        @client = client
        @orders = Userplex::Resources::Store::Orders.new(client: client)
      end
    end
  end
end

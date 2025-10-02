# typed: strong

module Userplex
  module Resources
    class Store
      sig { returns(Userplex::Resources::Store::Orders) }
      attr_reader :orders

      # Returns a map of status codes to quantities
      sig do
        params(request_options: Userplex::RequestOptions::OrHash).returns(
          T::Hash[Symbol, Integer]
        )
      end
      def list_inventory(request_options: {})
      end

      # @api private
      sig { params(client: Userplex::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

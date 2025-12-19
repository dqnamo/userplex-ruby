# frozen_string_literal: true

module Userplex
  module Resources
    class Events
      # @api private
      #
      # @param client [Userplex::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

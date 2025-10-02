# typed: strong

module Userplex
  module Models
    class EventTrackParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Userplex::EventTrackParams, Userplex::Internal::AnyHash)
        end

      # Event name
      sig { returns(String) }
      attr_accessor :event

      # External user ID
      sig { returns(String) }
      attr_accessor :user_id

      # Event metadata
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
      attr_reader :properties

      sig { params(properties: T::Hash[Symbol, T.nilable(T.anything)]).void }
      attr_writer :properties

      # Event timestamp (ISO 8601)
      sig { returns(T.nilable(Time)) }
      attr_reader :timestamp

      sig { params(timestamp: Time).void }
      attr_writer :timestamp

      sig do
        params(
          event: String,
          user_id: String,
          properties: T::Hash[Symbol, T.nilable(T.anything)],
          timestamp: Time,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Event name
        event:,
        # External user ID
        user_id:,
        # Event metadata
        properties: nil,
        # Event timestamp (ISO 8601)
        timestamp: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            event: String,
            user_id: String,
            properties: T::Hash[Symbol, T.nilable(T.anything)],
            timestamp: Time,
            request_options: Userplex::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

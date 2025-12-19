# typed: strong

module Userplex
  module Models
    class LogNewParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Userplex::LogNewParams, Userplex::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      # External user ID
      sig { returns(String) }
      attr_accessor :user_id

      # Additional log data
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
      attr_reader :data

      sig { params(data: T::Hash[Symbol, T.nilable(T.anything)]).void }
      attr_writer :data

      # Alias for data, for compatibility
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
      attr_reader :properties

      sig { params(properties: T::Hash[Symbol, T.nilable(T.anything)]).void }
      attr_writer :properties

      # Log timestamp (ISO 8601)
      sig { returns(T.nilable(Time)) }
      attr_reader :timestamp

      sig { params(timestamp: Time).void }
      attr_writer :timestamp

      sig do
        params(
          name: String,
          user_id: String,
          data: T::Hash[Symbol, T.nilable(T.anything)],
          properties: T::Hash[Symbol, T.nilable(T.anything)],
          timestamp: Time,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        # External user ID
        user_id:,
        # Additional log data
        data: nil,
        # Alias for data, for compatibility
        properties: nil,
        # Log timestamp (ISO 8601)
        timestamp: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            user_id: String,
            data: T::Hash[Symbol, T.nilable(T.anything)],
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

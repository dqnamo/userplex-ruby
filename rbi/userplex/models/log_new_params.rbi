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

      # Log name
      sig { returns(String) }
      attr_accessor :name

      # Additional log data
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :data

      sig { params(data: T::Hash[Symbol, T.anything]).void }
      attr_writer :data

      # Log timestamp (ISO 8601)
      sig { returns(T.nilable(Time)) }
      attr_reader :timestamp

      sig { params(timestamp: Time).void }
      attr_writer :timestamp

      # External user ID
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          name: String,
          data: T::Hash[Symbol, T.anything],
          timestamp: Time,
          user_id: String,
          request_options: Userplex::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Log name
        name:,
        # Additional log data
        data: nil,
        # Log timestamp (ISO 8601)
        timestamp: nil,
        # External user ID
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            data: T::Hash[Symbol, T.anything],
            timestamp: Time,
            user_id: String,
            request_options: Userplex::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

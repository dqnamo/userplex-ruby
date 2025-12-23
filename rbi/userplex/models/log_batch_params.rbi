# typed: strong

module Userplex
  module Models
    class LogBatchParams < Userplex::Internal::Type::BaseModel
      extend Userplex::Internal::Type::RequestParameters::Converter
      include Userplex::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Userplex::LogBatchParams, Userplex::Internal::AnyHash)
        end

      # A list of logs to ingest
      sig { returns(T.nilable(T::Array[Userplex::LogBatchParams::Body])) }
      attr_reader :body

      sig do
        params(body: T::Array[Userplex::LogBatchParams::Body::OrHash]).void
      end
      attr_writer :body

      sig do
        params(
          body: T::Array[Userplex::LogBatchParams::Body::OrHash],
          request_options: Userplex::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of logs to ingest
        body: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body: T::Array[Userplex::LogBatchParams::Body],
            request_options: Userplex::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Userplex::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Userplex::LogBatchParams::Body, Userplex::Internal::AnyHash)
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
            user_id: String
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
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              data: T::Hash[Symbol, T.anything],
              timestamp: Time,
              user_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

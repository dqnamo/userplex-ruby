# typed: strong

module Userplex
  module Models
    class LogBatchResponse < Userplex::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Userplex::Models::LogBatchResponse, Userplex::Internal::AnyHash)
        end

      # Number of logs processed
      sig { returns(Float) }
      attr_accessor :count

      # Operation success status
      sig { returns(T::Boolean) }
      attr_accessor :success

      sig do
        params(count: Float, success: T::Boolean).returns(T.attached_class)
      end
      def self.new(
        # Number of logs processed
        count:,
        # Operation success status
        success:
      )
      end

      sig { override.returns({ count: Float, success: T::Boolean }) }
      def to_hash
      end
    end
  end
end

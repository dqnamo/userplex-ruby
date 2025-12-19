# typed: strong

module Userplex
  module Models
    class LogNewResponse < Userplex::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Userplex::Models::LogNewResponse, Userplex::Internal::AnyHash)
        end

      # Operation success status
      sig { returns(T::Boolean) }
      attr_accessor :success

      sig { params(success: T::Boolean).returns(T.attached_class) }
      def self.new(
        # Operation success status
        success:
      )
      end

      sig { override.returns({ success: T::Boolean }) }
      def to_hash
      end
    end
  end
end

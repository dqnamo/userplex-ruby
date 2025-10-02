# typed: strong

module Userplex
  module Models
    class UserIdentifyResponse < Userplex::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Userplex::Models::UserIdentifyResponse,
            Userplex::Internal::AnyHash
          )
        end

      # Whether the operation was successful
      sig { returns(T::Boolean) }
      attr_accessor :success

      # The identified user ID
      sig { returns(String) }
      attr_accessor :user_id

      sig do
        params(success: T::Boolean, user_id: String).returns(T.attached_class)
      end
      def self.new(
        # Whether the operation was successful
        success:,
        # The identified user ID
        user_id:
      )
      end

      sig { override.returns({ success: T::Boolean, user_id: String }) }
      def to_hash
      end
    end
  end
end

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

      # Operation success status
      sig { returns(T::Boolean) }
      attr_accessor :success

      # The ID of the identified user
      sig { returns(String) }
      attr_accessor :user_id

      sig do
        params(success: T::Boolean, user_id: String).returns(T.attached_class)
      end
      def self.new(
        # Operation success status
        success:,
        # The ID of the identified user
        user_id:
      )
      end

      sig { override.returns({ success: T::Boolean, user_id: String }) }
      def to_hash
      end
    end
  end
end

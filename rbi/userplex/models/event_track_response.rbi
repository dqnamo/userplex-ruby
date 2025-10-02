# typed: strong

module Userplex
  module Models
    class EventTrackResponse < Userplex::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Userplex::Models::EventTrackResponse,
            Userplex::Internal::AnyHash
          )
        end

      # The event ID
      sig { returns(String) }
      attr_accessor :event_id

      # The event occurrence ID
      sig { returns(String) }
      attr_accessor :occurrence_id

      # Whether the operation was successful
      sig { returns(T::Boolean) }
      attr_accessor :success

      sig do
        params(
          event_id: String,
          occurrence_id: String,
          success: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The event ID
        event_id:,
        # The event occurrence ID
        occurrence_id:,
        # Whether the operation was successful
        success:
      )
      end

      sig do
        override.returns(
          { event_id: String, occurrence_id: String, success: T::Boolean }
        )
      end
      def to_hash
      end
    end
  end
end

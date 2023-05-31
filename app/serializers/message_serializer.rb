class MessageSerializer < Panko::Serializer
  attributes :user_id, :group_id, :text
end
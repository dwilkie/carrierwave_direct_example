class AvatarProcessor
  @queue = :avatar_processor_queue

  def self.perform(user_id, avatar_key)
    user = User.find(user_id)
    user.key = avatar_key
    user.remote_avatar_url = user.avatar.direct_fog_url(:with_path => true)
    user.save!
  end
end

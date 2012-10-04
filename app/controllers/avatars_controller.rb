class AvatarsController < ApplicationController
  def new
    @uploader = User.new.avatar
    @uploader.success_action_redirect = new_user_url
  end
end

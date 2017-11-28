class MicropostsController < ApplicationController
  before_action :authenticate_user!

  def create
    @micropost=current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
  def self.form_users_followed_by(user)
    followed_user_ids=user.followed_user_ids
    where("user_id IN(:followed_user_ids) OR user_id =:user_id",
     followed_user_ids: followed_user_ids, user_id: user)
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
end

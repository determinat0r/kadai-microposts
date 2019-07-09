class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.mark(micropost)
    flash[:success] = '投稿をお気に入りに追加しました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unmark(micropost)
    flash[:success] = '投稿をお気に入りから削除しました。'
    redirect_back(fallback_location: root_path)
  end
end

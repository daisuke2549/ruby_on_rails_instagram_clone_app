class PostsController < ApplicationController
  def new
  # new = インスタンスを作成するメソッド
    @post = Post.new
    @post.photos.build
  end

  def create
    @post = Post.new(post_params)
    if @post.photos.present?   
      # 投稿の写真があるかを確認、nilでなければtrueを返す。
      @post.save
      redirect_to root_path
      flash[:notice] = "投稿が保存されました"
    else
      redirect_to root_path
      flash[:notice] = "投稿に失敗しました"
    end
  end

  private
  def post_params
    params.require(:post).permit(:caption, photos_attributes: [:image]).merge(user_id: current_user.id)
  end
  # privateのついたメソッドを呼び出す時は、レシーバは指定できない

end

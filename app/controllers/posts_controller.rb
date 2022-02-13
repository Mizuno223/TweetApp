class PostsController < ApplicationController
  def index
    post1 = "今日から始める"
    post2 = "投稿一覧ページ作成中"
    @posts = [post1, post2]
  end
end

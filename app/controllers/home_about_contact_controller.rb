class HomeAboutContactController < ApplicationController
  def index
    @posts = Post.all
    @featured_posts = @posts.where('featured = ?', true)
  end

  def about
  end

  def contact
  end
end

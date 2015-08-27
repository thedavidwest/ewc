class PagesController < ApplicationController
  def home
  end
  def wearable
    @posts = Post.where(category: "Wearable")
  end
  def functional
    @posts = Post.where(category: "Functional")
  end
  def stockists
  end
  def contact
  end
  def admin
    @post = Post.new
  end
end

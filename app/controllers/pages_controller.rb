class PagesController < ApplicationController
  def home
  end
  def circle_studs
  end
  def geometric_studs
  end
  def triangle_studs
  end
  def bar_earrings
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

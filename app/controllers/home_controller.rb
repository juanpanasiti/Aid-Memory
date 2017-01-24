class HomeController < ApplicationController
  def index
    @letitul = 'Home'
    @articles = Article.all
  end

  def about
    @letitul = 'About'
  end
end

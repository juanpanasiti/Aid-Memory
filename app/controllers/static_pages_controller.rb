class StaticPagesController < ApplicationController
  def home
    @letitul = 'Home'
  end

  def help
    @letitul = 'Help'
  end

  def about
    @letitul = 'About'
  end
end

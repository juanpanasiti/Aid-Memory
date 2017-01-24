class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_category
  before_action :set_new_category

  def set_new_category
    @category = Category.new()
  end
  def set_category
    @categories = Category.all
  end
end

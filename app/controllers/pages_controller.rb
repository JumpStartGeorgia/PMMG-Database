class PagesController < ApplicationController
  before_filter :authenticate_user!
  
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, :author)
  end

  def home
  end

  def summary
  end

end

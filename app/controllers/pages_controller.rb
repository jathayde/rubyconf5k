class PagesController < ApplicationController
  
  before_filter :set_page_title
  before_filter :set_body_id
  skip_before_filter :set_body_id, :only => :index # Keeps the background image off the home page
  
  
  
  
  
  private
  def set_body_id
    @body_id = "inside"
  end
end

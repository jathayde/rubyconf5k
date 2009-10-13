class PagesController < ApplicationController
  
  before_filter :set_body_id
  skip_before_filter :set_body_id, :only => :index # Keeps the background image off the home page
  
  def index
    @page_title = "Home"
  end
  
  def location
    @page_title = "Where is it at?"
  end
  
  def about
    @page_title = "About Us"
  end
  
  def register
    @page_title = "Registration"
  end
  
  def schedule
    @page_title = "Schedule"
  end
  
  
  private
  def set_body_id
    @body_id = "inside"
  end
  
end

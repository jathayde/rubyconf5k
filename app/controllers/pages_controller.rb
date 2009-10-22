class PagesController < ApplicationController
  
  
  def index
    @body_id = "home"
    @page_title = "Home"
  end
  
  def location
    @body_id = "inside"
    @page_title = "Where is it at?"
  end
  
  def about
    @body_id = "inside"
    @page_title = "About Us"
  end
  
  def register
    @body_id = "inside"
    @page_title = "Registration"
  end
  
  def schedule
    @body_id = "inside"
    @page_title = "Schedule"
  end
  
  def license
    @body_id = "inside"
    @page_title = "License"
  end
  
  
  
end

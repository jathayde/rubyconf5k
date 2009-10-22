class PagesController < ApplicationController

  def index
    @body_id = "home"
    @page_title = "Home"
  end

  def location
    @body_id = "inside"
    @page_title = "Where is it at?"
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
  
  def donate
    redirect_to "https://www.justgive.org/basket?acton=viewWishList&donorId=256614&listTypeId=1"
  end

end

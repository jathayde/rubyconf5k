class PagesController < ApplicationController

  def index
    @body_id = "home"
    @page_title = "Home"
  end

  def location
    @body_id = "inside"
    @page_title = "Where?"
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

  def results
    @body_id = "inside"
    @page_title = "Results"
  end

  def donate
    redirect_to "http://us.movember.com/donate/your-details/team_id/89968/"
  end

end

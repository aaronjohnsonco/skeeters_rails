class PagesController < ApplicationController
  def home
    @posts = Post.where("date >= ?", Date.today).order('date desc').limit(4)
    @events = Event.where("start_date >= ?", Date.today).limit(4)
  end

  def calendar

  end

  def tryouts
  	
  end

end

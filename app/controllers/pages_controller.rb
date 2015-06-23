class PagesController < ApplicationController
  def home
    @posts = Post.all.limit(4)
    @events = Event.where("start_date >= ?", Date.today).limit(4)
  end

  def calendar

  end

  def tryouts
  	@candidate = Candidate.new
  end

end

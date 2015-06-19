class DashboardController < ApplicationController

  before_action :require_user

  def index
    @recent_posts = Post.all
    @current_teams = Team.all
  end

  def posts
    @posts = Post.order('created_at desc')
  end

  def events
    @events = Event.all
  end

  def coaches
    @coaches = Coach.all
  end

  def players
    @players = Player.all
  end

end

class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    render json: Game.all
  end

  def create
    game = Game.new(:state => params[:state])
    game.save
    render json: game
  end

  def update
    game = Game.find(params[:id])
    game.update(:state => params[:state])
    render json: game
  end

  def show
    render json: Game.find(params[:id])
  end

end

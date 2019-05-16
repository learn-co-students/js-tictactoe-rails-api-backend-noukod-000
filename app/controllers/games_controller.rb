class GamesController < ApplicationController
  # Add your GamesController code here
    before_action :get_game, only: [:show, :update]

    def index
      @games = Game.all
      render json: @games
    end
    
    def create
      Game.create(state: params[:state])
      render json: @game
    end

   def show
     render json: @game
   end

   def update
     @game.update(state: params[:state])
     render json: @game
   end

   private
   def get_game
     @game = Game.find(params[:id])
   end

   def game_params
     params.permit(:state)
   end
end

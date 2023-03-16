class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheese
  end

  # GET /cheeses/:id
  def show
   if cheese = Cheese.find_by(id: params[:id])

    render json: cheese, except: [:created_at, :updated_at]

   else 

    render json: { error: "Cheese not found" }

   end

  end
end

  



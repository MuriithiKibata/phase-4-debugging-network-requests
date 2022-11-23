class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    render json: Movie.create(permitted_params), status: :created
  end

  private

  def permitted_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end
end

# == Schema Information
#
# Table name: films
#
#  id           :bigint           not null, primary key
#  duration     :integer
#  name         :string
#  rating       :decimal(, )
#  realese_date :date
#  synopsis     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :edit, :update, :destroy]

  def index
    @films = Film.all
  end

  def show; end

  def new
    @film = Film.new
  end

  def create
    if @film.save
      redirect_to @film
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def destroy
    @film.destroy
    redirect film_path
  end

  private

  def film_params
    params.expect(film: [:title, :duration, :name, :rating, :realese_date, :synopsis])
  end

  def set_film
    @film = Film.find(params[:id])
  end
end

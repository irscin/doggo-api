class Api::V1::BreedsController < ApplicationController
  def index
    all_dog_brands = DogBrand.all
    render json: all_dog_brands, status: :ok
  end

  def show
    begin
      found_dog = DogBrand.find(params[:id])

      render json: found_dog, status: :ok unless found_dog.nil?
    rescue StandardError => error
      render json: {error: 'Não foi possível encontrar um doggo com esse ID'}, status: 404
    end
  end

  def create
    begin
      new_dog = DogBrand.new(
        allow_params
      )
      if new_dog.save 
        render json: new_dog, status: :ok
      end
    rescue StandardError => error
      render json: {error: 'Não foi possível criar'}, status: 404
    end
  end

  def delete
    begin
      found_dog = DogBrand.find(params[:id])
      found_dog.destroy

      render json: {deleted: 'true'}, status: 200
    rescue StandardError => error
      render json: {error: 'Não foi possível encontrar um doggo com esse ID'}, status: 404
    end
  end

  def update
    begin
      found_dog = DogBrand.find(params[:id])

      if found_dog.update(allow_params)
        render json: found_dog, status: :ok
      else
        render json: found_dog.errors, status: :unprocessable_entity
      end
    rescue StandardError => error
      render json: {error: 'Não foi possível encontrar um doggo com esse ID'}, status: 404
    end
  end

  private

  def allow_params
    params.permit([
      :brand,
      :max_life_expectancy,
      :key_characteristics,
      :size,
      :bark_type,
      :colors
    ])
  end
end

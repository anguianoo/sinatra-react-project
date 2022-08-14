class SkatersController < ApplicationController
    # get all skaters
  get '/skaters' do
    skaters = Skater.all
    skaters.to_json(include: :skateboards)
  end

  # find a skater
  get '/skaters/:id' do
    skater = Skater.find(params[:id])
    skater.to_json(include: :skateboards )
  end

  # find a skater by name
  # get '/skaters/:name' do
  #   skater = Skater.find_by(:name)
  #   skater.to_json
  # end

# create a skater
  post '/skaters' do 
    skater = Skater.create(
      name: params[:name],
      gender: params[:gender],
      stance: params[:stance]
    )
    skater.to_json
  end

  # update a skater
  patch '/skater/:id' do
    skater = Skater.find(params[:id])
    skater.update(
      name: params[:name],
      gender: params[:gender],
      stance: params[:stance]
    )
    skater.to_json
  end


end
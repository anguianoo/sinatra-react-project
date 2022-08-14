class SkateboardsController < ApplicationController
    
# get all skateboards
  get '/skateboards' do
    skateboards = Skateboard.all
    skateboards.to_json(include: :skater)
  end

# find a skateboard
  get '/skateboards/:id' do
    skateboard = Skateboard.find(params[:id])
    skateboard.to_json(only: [:id, :brand, :skater_id])
  end

  # delete a skateboard
  delete '/skateboards/:id' do
    skateboard = Skateboard.find(params[:id])
    skateboard.destroy
    skateboard.to_json
  end

  # create a skateboard
  post '/skateboards' do 
    skateboard = Skateboard.create(
      brand: params[:brand],
      skater_id: params[:skater_id]
    )
    skateboard.to_json
  end

  # patch a skateboard
  patch '/skateboard/:id' do
    skateboard = Skateboard.find(params[:id])
    skateboard.update(
      brand: params[:brand]
    )
    skateboard.to_json
  end

end
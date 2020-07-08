class Api::ListingsController < ApplicationController

  def index
    @listings = Listing.all
    render "index.json.jb"
  end
  
  def create
    @listing = Listing.new(
      description: params[:description], 
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms], 
      bathrooms: params[:bathrooms], 
      availability: params[:availability], 
      price: params[:price], 
      address:params[:address],
      latitude: params[:latitude], 
      longitude: params[:longitude]
    )
    @listing.save
    render "show.json.jb"
  end

end

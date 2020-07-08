class Api::ListingsController < ApplicationController

  def index
    @listings = Listing.all
    render "index.json.jb"
  end
  
  def create
    @listing = Listing.new(
      description: params[:description], 
      year_built:"1880", #Start here, build out user input to create Segment Parameters for listing a house. Add a function to convert address to longitude and latitude variables
      square_feet:1250,
      bedrooms:5, 
      bathrooms:5, 
      availability:true, 
      price:400_000, 
      address:"3450 Original st., middle, nowhere",latitude:8234453, 
      longitude:563456
    )
    @listing.save
    render "show.json.jb"
  end

end

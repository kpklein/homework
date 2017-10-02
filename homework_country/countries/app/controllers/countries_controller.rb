class CountriesController < ApplicationController
  def index
    @country = Country.all


  end

  def show
    
    @country = Country.find(params[:id])

  end

  def edit

    @country = Country.find(params[:id])


  end

  def create
    new_country = Country.new(country_params)
    new_country.save
    redirect_to "/country"
  end

  def new
    @country = Country.new
  end

  def update
    country = Country.find(params[:id])
    country.update(country_params)
    redirect_to "/country"

  end

  def destroy
  @country = Country.destroy(params[:id])
  redirect_to "/country"   

  end



end

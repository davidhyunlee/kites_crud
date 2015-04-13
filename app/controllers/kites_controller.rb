class KitesController < ApplicationController
  def index
    @kites = Kite.all
  end

  def show
    @kite = Kite.find(params[:id])
  end

  def new
    @kite = Kite.new
  end

  def edit
    @kite = Kite.find(params[:id])
  end

  def create
	@kite = Kite.new(kite_params)

	if @kite.save
		redirect_to kites_path
	else
		render "new"
	end
  end

  def update
	@kite = Kite.find(params[:id])

	if @kite.update_attributes(kite_params)
		redirect_to kite_path
	else
		render edit
	end
  end

  def destroy
    @kite = Kite.find(params[:id])
    @kite.destroy
    redirect_to kites_path
  end 

  private
  	def kite_params
  		params.require(:kite).permit(:name, :description, :manufacturer, :color, :quantity, :price)
  	end

end

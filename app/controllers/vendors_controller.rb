class VendorsController < ApplicationController
  def index
  	@vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  end  

	def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save 
      flash[:success] = 'Thanks for signing up!'
      redirect_to @vendor
    else
      render 'new'
    end
  end

private
  def program_params
    params.require(:vendor).permit(:first_name, :last_name, :email, :phone, :address, :city, :state, :zip, :industry, :pull_out, :concerns, :questions)
  end
end

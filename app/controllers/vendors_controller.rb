class VendorsController < ApplicationController
  def index
  	@vendors = Vendor.all
    authorize! :read, @vendors
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
      UserMailer.welcome_email(@vendor).deliver
      redirect_to vendor_success_path
    else
      render 'new'
    end
  end

private
  def vendor_params
    params.require(:vendor).permit(:first_name, :last_name, :email, :phone, :address, :city, :state, :zip, :vendor_name, :comments, :speak_topic, :speak_topic_ceu)
  end
end

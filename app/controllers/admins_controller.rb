class AdminsController < ApplicationController
  def index
  	@admins = Admin.all
  end

  def show
  	@admin = Admin.find(params[:id])
  end

  def new
  	@admin = Admin.new
  end

  def create
  	@admin = Admin.create(admin_params)
  	if @admin.save
  		redirect_to admins_path
  	else
  		render 'new'
  	end
  end

  private
  	def admin_params
  		params.require(:admin).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  	end
end

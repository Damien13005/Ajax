class EmailsController < ApplicationController
  before_action :set_email, only: [:destroy]

  def index
  	@email = Email.all
  end


  def destroy
   @email.destroy
   @email = Email.destroy()
   
   respond_to do |format|
      format.html { redirect_to email_url, notice: 'email was successfully destroyed.'}
      format.json { head :no_content }
      format.js   { render :layout => false }
   end
	end


end

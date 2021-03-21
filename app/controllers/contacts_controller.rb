class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver &&  @contact[:email2].present?
      # flash.now[:error] = nil
      redirect_to root_path, notice: 'Message sent successfully'
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :email2, :firstname, :lastname, :phone, :message, :type)
  end
end

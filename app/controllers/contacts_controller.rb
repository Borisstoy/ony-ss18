class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  skip_before_action :verify_authenticity_token

  def index
  end

  def new
    @new_contact = Contact.new
  end

  def create
    @new_contact = Contact.new(contact_params)

    respond_to do |format|
      if @new_contact.save
        format.js
        # RequestMailer.new_request_contact(@new_contact).deliver
        flash[:notice] = t('controllers.contact.success')
        format.html { redirect_back(fallback_location: root_path) }
      else
        format.js { render :new }
        format.html do
          flash[:alert] = t('controllers.newsletter.fail')
          render :new
        end
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name,
                                    :last_name,
                                    :email,
                                    :body,
                                    :newsletter)
  end
end

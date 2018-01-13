class NewslettersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  skip_before_action :verify_authenticity_token

  def index
  end

  def new
    @new_newsletter = Newsletter.new
  end

  def create
    @new_newsletter = Newsletter.new newsletter_params

    respond_to do |format|
      if @new_newsletter.save
        format.js
        # AdminNotificationMailer.new_newsletter_notification(@new_newsletter).deliver
        flash[:notice] = t('controllers.newsletter.success')
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

  def newsletter_params
    params.require(:newsletter).permit(:email)
  end
end

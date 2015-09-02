module Spree
  class ApplicationsController < ApplicationController
    def new
      @application = Invite::ApplicationForm.new
    end

    def create
      @application = Invite::ApplicationForm.new(application_params)
      if @application.valid?
        app = create_application
        Invite.configuration.mailer.confirm_email(app.id)
        flash[:notice] = Spree.t('invite.application_received')
        redirect_to '' 
      else
        render :new
      end
    end

    def confirm_email
      application = Spree::Application.find_by_confirmation_token(params[:token]) || not_found
      application.update_attribute 'confirmed', true
      flash[:notice] = Spree.t('invite.application_confirmed')
      redirect_to '' 
    end

    private

    def application_params
      params.require(:invite_application_form).except!(:id).permit!
    end

    def create_application
      Application.create form: @application.to_hash
    end

    def not_found
      raise ActiveRecord::RecordNotFound.new('Not Found')
    end
  end
end

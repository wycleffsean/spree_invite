module Spree
  class ApplicationsController < ApplicationController
    def new
      @application = Invite::ApplicationForm.new
    end

    def create
      @application = Invite::ApplicationForm.new(application_params)
      if @application.valid?
        create_application
        flash[:notice] = Spree.t('invite.application_received')
        redirect_to '' 
      else
        render :new
      end
    end

    private

    def application_params
      params.require(:invite_application_form).except!(:id).permit!
    end

    def create_application
      Application.create form: @application.to_hash
    end
  end
end

module Spree
  class ApplicationsController < ApplicationController
    def new
      @application = Spree::Application.new
    end

    def create
      @application = Spree::Application.new(application_params)
      if @application.valid?
        flash[:notice] = Spree.t('invite.application_received')
        redirect_to '' 
      else
        render :new
      end
    end

    private

    def application_params
      params.require(:application).except!(:id).permit!
    end
  end
end

module Spree
  module Admin
    class ApplicationsController < Spree::Admin::BaseController
      include RansackDateSearch
      ransack_date_searchable date_col: 'subscribed_at'

      def index
        @search = Spree::Application.search(params[:q])
        @applications = @search.result
        respond_with(@applications)
      end
    end
  end
end

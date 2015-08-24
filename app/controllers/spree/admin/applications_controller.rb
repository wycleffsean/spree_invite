module Spree
  module Admin
    class ApplicationsController < Spree::Admin::BaseController
      include RansackDateSearch
      ransack_date_searchable date_col: 'updated_at'

      def index
        @search = Spree::Application.search(params[:q])
        @applications = @search.result
          .page(params[:page])
          .per(params[:per_page] || 20)
        respond_with(@applications)
      end
    end
  end
end

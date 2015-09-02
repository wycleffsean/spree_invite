module Spree
  class Application < Spree::Base
    self.table_name = "spree_invite_applications"
    serialize :form, Invite::ApplicationForm

    before_create { self.confirmation_token = SecureRandom.urlsafe_base64 }
  end
end

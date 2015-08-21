module Spree
  class Application < Spree::Base
    self.table_name = "spree_invite_applications"

    validates :first_name, :last_name, presence: true
    validates_format_of :email, :with => /@/
  end
end

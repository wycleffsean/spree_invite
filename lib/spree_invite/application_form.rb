require 'virtus'

module Spree
  module Invite
    class ApplicationForm
      include Virtus.model
      include ActiveModel::Model
      include ActiveModel::Validations

      attribute :first_name
      attribute :last_name
      attribute :email

      validates :first_name, :last_name, presence: true
      validates_format_of :email, :with => /@/

      def self.dump(form)
        form.to_hash
      end

      def self.load(form)
        new(form)
      end

    end
  end
end

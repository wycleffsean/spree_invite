module Spree
  class Application < Spree::Base
    self.table_name = "spree_invite_applications"
    serialize :form, Invite::ApplicationForm

    alias_method :ar_attributes, :attributes
    def attributes
      form_attributes = Hash[form.attributes.map{|k,v| [k.to_s, v] }]
      ar_attributes.merge(form_attributes)
    end
    def method_missing(method, *args)
      return form.public_send(method, *args) if method.in?(form.attributes.keys)
      super
    end
  end
end

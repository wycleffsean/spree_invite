Rails.application.routes.draw do

  mount Spree::Invite::Engine => "/spree_invite"
end

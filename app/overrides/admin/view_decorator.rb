Deface::Override.new(
  :virtual_path => "spree/admin/shared/_main_menu",
  :name => "add_invites_tab_to_admin_menu",
  :insert_after=> "ul.nav.nav-sidebar:nth-child(5)",
  :text => <<-EOF,
    <% if can? :admin, Spree::Promotion %>
      <ul class="nav nav-sidebar">
        <%= main_menu_tree "Invites", icon: "envelope", sub_menu: "invites", url: "#sidebar-invites" %>
      </ul>
    <% end %>
    EOF
  :disabled => false)

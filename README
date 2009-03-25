## Simple Menu Plugin for Rails

This is still under active development. Feel free to fork and hack.

### Features

* Possible to have muliple menus in same page 
* Current Tab selection (set the @current_tab with the tab(s) you want to select for current controller/action.)
* Automatic URL derivation.
* Customize the URL, link text (supports html tags)
* Supports html options. Specify custom ids and classes
* Provide a custom seperator


### Some example cases

1.
      menu_tag :main-menu, :seperator => "|" do |menu|
        if current_user
          menu.item :settings, :url => account_path
          menu.item :help, :url => "#"
          menu.item :sign_out
        else
          menu.item :signup, :text => "Create an account", :url => new_user_path
          menu.item :sign_in, :url => new_user_session_path 
        end
      end

2.
	    menu_tag :manage, :class => "sidemenu" do |menu|
        menu.item :clients, :text => "<strong>Clients</strong><br/>Your contacts &amp; address book"
        menu.item :items, :text => "<strong>Items</strong><br/>Tasks, products and services"
      end
 

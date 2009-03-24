require File.join(File.dirname(__FILE__), 'spec_helper')

describe "Menu Helper" do
  include ActionView::Helpers::TagHelper
  include SimpleMenu::MenuHelper

  it "should not add a seperator to last menu item" do
    @simple_menu = menu_tag(:simple, :seperator => "|") do |menu|
        menu.item "Home", :url => "/home"
        menu.item "About", :url => "/about"
    end 

    @simple_menu.should == "<ul id=\"simple\"><li id=\"home_link\"><a href=\"/home\">Home</a> | </li><li id=\"about_link\"><a href=\"/about\">About</a></li></ul>"
  end
end

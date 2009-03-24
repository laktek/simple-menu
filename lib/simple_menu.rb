class Array
  def last?(element)
    self.index(element) == (self.length - 1)
  end
end

module SimpleMenu 
  module MenuHelper

      def menu_tag(name, options = {}, &block)
        options[:id] = name.to_s unless options[:id]
        seperator = options.delete(:seperator) || ""
        
        content_tag(:ul, options) do
          menu_object = MenuBuilder.new(@current_tab)
          yield(menu_object)

          menu_object.items.map do |item|
            link = link_to(item.delete(:link_text), item.delete(:link_url))         
            link = "#{link} #{seperator}" unless menu_object.items.last?(item)

            content_tag(:li, link, item)
          end
        end
      end


      class MenuBuilder
        attr_reader :items

        def initialize(selected)
          @items = []
          @selected = selected 
        end

        def item(name, options={})
          link = name.to_s.humanize
          options[:id] = "#{name.to_s}_link" unless options[:id]

          options[:link_text] = options.delete(:text) || link
          options[:link_url] = options.delete(:url) || name 

          options[:class] = "#{options[:class]} current" if is_selected?(name)

          @items.push options 
          nil
        end

        private
        def is_selected?(item_name)
          if @selected
            return @selected.include?(item_name) if @selected.class == Array
            @selected == item_name              
          end
        end
      end

  end
end

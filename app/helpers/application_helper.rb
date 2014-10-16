module ApplicationHelper
	def nav_link_to name, path, li_options = {}, link_options = {}
		if current_page?(path)
			li_options[:class] = "active "+li_options[:class].to_s
			content_tag(:li, link_to(name, path, link_options), li_options)
		else
			content_tag(:li, link_to(name, path, link_options), li_options)
		end
	end
end

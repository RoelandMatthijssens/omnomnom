module ApplicationHelper
	def nav_link_to name, path, li_options = {}, link_options = {}
		if current_page?(path)
			if !li_options[:class]
				li_options[:class] = "active"
			else
				li_options[:class] += " active"
			end
			content_tag(:li, link_to(name, path, link_options), li_options)
		else
			content_tag(:li, link_to(name, path, link_options), li_options)
		end
	end
end

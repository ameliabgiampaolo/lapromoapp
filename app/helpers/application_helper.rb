module ApplicationHelper

	def sortable(column,title)
		
		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
		css_class = column == sort_column ? "current #{sort_direction}" : nil
		link_to title, {sort: column, direction: direction}, class: css_class
	end

	def check_for_diner_user
		user = current_user

		if (!user || !user.diner ||  !user.role || user.role.name != 'Comensal')
			render :file => "public/401.html", :status => :unauthorized
		end
	end
end

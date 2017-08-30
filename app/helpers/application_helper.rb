module ApplicationHelper

  # def breadcrumbs_helper(breadcrumbs)
  #   html = ''
  #   html << "<nav class='breadcrumb'>"
  #   html << link_to('Home', root_path, class: 'breadcrumb-item')
  #   breadcrumbs.each do |item|
  #     case item.class.to_s
  #     when 'Array'
  #       string, link = item
  #       html << link_to(string, link, class: "breadcrumb-item #{item.equal?(breadcrumbs.last) ? 'active' : nil}")
  #     when 'String'
  #       html << content_tag(:span, item, class: "breadcrumb-item #{item.equal?(breadcrumbs.last) ? 'active' : nil}")
  #     end
  #   end
  #   html << '</nav>'
  #   html.html_safe
  # end

end

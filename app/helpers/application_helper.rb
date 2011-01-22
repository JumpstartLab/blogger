module ApplicationHelper
  def tag_links(tags)
    content_tag(:ul, tag_list_items(tags) + content_tag(:li, link_to("all", articles_path)))
  end
  
  def tag_list_items(tags)
    tags.collect do |tag|
      content_tag(:li, link_to(highlighted_tag_name(tag.name), articles_path(:tag => tag.name)))
    end.join.html_safe
  end

  def highlighted_tag_name(tag)
    if params[:tag] && (params[:tag] == tag)
      "<em>#{tag}</em>".html_safe
    else
      tag
    end
  end
end

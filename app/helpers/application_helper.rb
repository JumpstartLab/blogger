module ApplicationHelper
  def tag_links(tags)
    tags.collect do |tag|
      link_to highlighted_tag_name(tag.name), articles_path(:tag => tag.name)
    end.join(", ").html_safe
  end

  def highlighted_tag_name(tag)
    if params[:tag] && (params[:tag] == tag)
      "<b>#{tag}</b>".html_safe
    else
      tag
    end
  end
end

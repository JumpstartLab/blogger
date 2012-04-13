module ArticlesHelper
  def tag_links(tags)
    links = tags.collect{|tag| link_to tag.name, tag_path(tag)}
    return links.join(", ").html_safe
  end
end

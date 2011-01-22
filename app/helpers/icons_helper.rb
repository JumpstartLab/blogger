module IconsHelper
  def edit_icon(object, link_text = nil)
    edit_icon_filename = '/images/page_edit.png'
    link_to image_tag(edit_icon_filename) + link_text,
            edit_polymorphic_path(object)
  end

  def delete_icon(object)
    delete_icon_filename = '/images/cancel.png'
    link_to image_tag(delete_icon_filename),
            polymorphic_path(object),
            :method => :delete,
            :confirm => "Delete '#{object}'?"
  end
end
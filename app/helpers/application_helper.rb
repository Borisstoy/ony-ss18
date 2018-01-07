module ApplicationHelper
  def is_path?(path)
    request.path.include?(path)
  end

  def is_dyptique_collection_body?
    if is_path?('dyptique') || current_page?(root_url)
      "dyptique-body"
    else
      "regular-body"
    end
  end

  def is_dyptique_collection_navbar?
    if is_path?('dyptique') || current_page?(root_url)
      "dyptique-navbar"
    else
      "regular-navbar"
    end
  end

  def is_dyptique?
    is_path?('dyptique') || current_page?(root_url)
  end
end

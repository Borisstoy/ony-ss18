module ApplicationHelper
  def is_path?(path)
    request.path.include?(path)
  end

  # depreciated

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

  ##

  def site_description
    "ÖNY, est une marque de vêtements française de streetwear haut de gamme pour homme et femme. Elle floute les limites du genre avec des pièces mixtes telles que le Teddy et le Sweat. Rendez-vous sur notre E-shop. Livraison gratuite en France."
  end

  def og_meta
    {
      site: 'www.ony-france.com',
      # image: image_url('reservotron-meta-og-img.jpg'),
      type: 'website',
      description: "#{site_description}",
      site_name: 'www.ony-france.com',
      url: request.original_url
    }
  end

  def structured_data
    raw(<<-EOS
      <script type="application/ld+json">
        {
          "@context": "http://schema.org",
          "@type": "Organization",
          "url": "https://www.ony-france.com",
          "name": "Ony",
          "description": "#{site_description}",
          "contactPoint": {
            "@type": "ContactPoint",
            "telephone": "+1-514-582-3924",
            "contactType": "Customer service"
          }
        }
      </script>
      EOS
    )
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :dyptique,
                                                  :bleu_citron,
                                                  :velvet_underground,
                                                  :sphere,
                                                  :about,
                                                  :contact,
                                                  :legals,
                                                  :terms_and_conditions ]

  def ss18
  end

  def bleu_citron
  end

  def velvet_underground
  end

  def sphere
  end

  def about
  end

  def contact
  end

  def legals
  end
end

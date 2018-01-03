class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :lookbook,
                                                  :sphere,
                                                  :about,
                                                  :contact,
                                                  :legal,
                                                  :terms_and_conditions ]

  def lookbook
  end

  def sphere
  end

  def about
  end

  def contact
  end

  def legal
  end

  def terms_and_conditions
  end
end

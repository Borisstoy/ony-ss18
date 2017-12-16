class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :lookbook, :sphere, :about, :contact ]

  def lookbook
  end

  def sphere
  end

  def about
  end

  def contact
  end
end

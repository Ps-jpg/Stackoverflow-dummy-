class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def landing_page; end

  def privacy; end

  def terms; end

  def about; end

  def pricing; end
end

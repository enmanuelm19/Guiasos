class PagesController < ApplicationController
  def index
    @foundations = Admin::Foundation.all
  end
end

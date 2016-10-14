class HomeController < ApplicationController
  def index
  end
  def menu
    if params[:section]
      @section = Section.where(name: params[:section]).first
    elsif params[:section_id]
      @section = Section.where(id: params[:section_id]).first
    end
  end

  def contact_us
  end
  def order
  end
end

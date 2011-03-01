class HomeController < ApplicationController
  def index
    render :template => 'home/index.xml.builder', :layout => false
  end
end

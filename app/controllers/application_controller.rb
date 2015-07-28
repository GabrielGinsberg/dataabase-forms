class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def show
    @prof = Prof.find_by_id(params['id'])
  end
  
  def new
  end
  
  def create
    p = Prof.new
    p.name = params['name']
    p.email = params['email']
    p.save
    redirect_to "/users/#{ p.id }"
  end
end

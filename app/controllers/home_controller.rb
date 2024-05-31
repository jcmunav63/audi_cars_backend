class HomeController < ActionController::Base
  include ActionView::Layouts
  append_view_path "#{Rails.root}/app/views"

  def index; end
end

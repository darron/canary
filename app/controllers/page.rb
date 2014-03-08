Canary::App.controllers :page do

  get :index, :map => "/#{ENV['BASE_CANARY_PATH']}/:page_name" do
    @page_name = params[:page_name]
    info = request
    deliver(:hit_notifier, :hit_email, "#{@page_name} was Hit", ENV['EMAIL_DESTINATION'], info) unless ENV['STOP_ALL_EMAIL']
    render 'index'
  end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end


end

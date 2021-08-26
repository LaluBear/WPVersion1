class MainController < ApplicationController
  def abc
  end
  def xxx
  	a = "notnattee"
  	a = params[:a]
  	b = params[:b]
  	@result = a + b
  end
  def welcome
  end
  def contact
  end
end

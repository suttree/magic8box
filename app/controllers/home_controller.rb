class HomeController < ApplicationController
  def index
    @advice = Advice.new
  end

  def random
    @advice = Advice.offset(rand(Advice.count)).first
    render :layout => false
  end
end

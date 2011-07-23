class AdviceController < ApplicationController
  def create
    @advice = Advice.new(params[:advice])
    if @advice.save
      flash[:notice] = 'Saved'
    else
      flash[:notice] = 'err0r'
    end
    redirect_to '/'
  end
end

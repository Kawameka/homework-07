class NumbersController < ApplicationController

  def index
    @numbers = Number.all
  end

  def new
    @number = Number.new
  end
  
  def create
    @number = Number.create(number_params)
    if @number.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private 

  def number_params
    params.require(:number).permit(:to_factorial, :factorialed)
  end
  
  
end

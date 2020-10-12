class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update, :destroy]

  def index
    @ducks = Duck.all
  end

  def show
  end

  def edit
  end

  def update
    @duck.update(duck_params)
    redirect_to duck_path(@duck)
  end

  def new
    @duck = Duck.new
  end

  def create
    @duck = Duck.new(duck_params)
    @duck.save
    redirect_to duck_path(@duck)
  end

  def destroy
    @employee.destroy
    redirect_to employees_path
  end

  private

  def find_duck
    @duck = Duck.find(params[:id])
  end

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

end

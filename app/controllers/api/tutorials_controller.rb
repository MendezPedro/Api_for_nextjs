class Api::TutorialsController < ApplicationController
  def index
    @tutorials = Tutorial.all
    render json: @tutorials
  end

  def show
    @tutorial = Tutorial.find(params[:id])
    render json: @tutorial
  end

  def create
    @tutorial = Tutorial.new(tutorial_params)
    if @tutorial.save
      render json: @tutorial, status: :created
    else
      render json: @tutorial.errors, status: :unprocessable_entity
    end
  end

  def update
    @tutorial = Tutorial.find(params[:id])
    if @tutorial.update(tutorial_params)
      render json: @tutorial
    else
      render json: @tutorial.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @tutorial = Tutorial.find(params[:id])
    @tutorial.destroy
    head :no_content
  end

  private

  def tutorial_params
    params.require(:tutorial).permit(:title, :content, :url)
  end
end

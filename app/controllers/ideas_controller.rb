class IdeasController < ApplicationController
  
  def show
    @idea = Idea.find(params[:id])
  end
  
  def new
    @idea = Idea.new
    @ideas = Idea.all.sort_by { |idea| idea.points}.reverse
  end
  
  def create
    @idea = Idea.new(text: params[:idea][:text], points: 0)
    if @idea.save
      redirect_to root_url
    else
      render 'new'  # fill in with something that makes sense later
    end
  end
  
  def update
    @idea = Idea.find(params[:id])
    if @idea.update_attributes(points: @idea.points + 1)
      redirect_to root_url
    else
      render 'new'  # fill in
    end
  end
  
  def index
    redirect_to root_url
  end
  
end

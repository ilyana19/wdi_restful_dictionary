class EntriesController < ApplicationController
  def index
    # here we'll define some @instance_variables to store data from the database for the views to use
    @entries = Entry.all
    render :index
  end

  def show
    @entry = Entry.find(params[:id])
    render :show
  end

  def new
    @entry = Entry.new
    render :new
  end

  def create
    redirect_to entries_url
  end

  def edit
    render :edit
  end

  def update
    redirect_to entry_url(params[:id])
  end

  def destory
    redirect_to entries_url
  end
end

class EntriesController < ApplicationController
  
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create(entries_params)
    redirect_to "/entries"
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to "/entries"
  end



  private

  def entries_params
    params.require(:entry).permit(:Author, :Photo_url, :Date_taken)
  end




end
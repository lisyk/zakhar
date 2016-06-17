class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def new
  end

  def create
    @guest=Guest.new(name: params[:guest][:name])
    @guest.save
    redirect_to guests_path
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def join
    @guest=Guest.find(params[:guest_id])
    if params[:visit] == 'yes'
      @guest.visit = true
      @guest.save!
      respond_to do |format|
        format.html {
          redirect_to guest_hooray_path
        }
      end
    else
      @guest.visit = false
      @guest.save!
      respond_to do |format|
        format.html {
          redirect_to  guest_upset_path
        }
      end
    end


  end

  def hooray

  end

  def upset

  end
end

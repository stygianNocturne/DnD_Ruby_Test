# Controller for the campaign pages of this site
class CampaignController < ActionController::Base
  layout 'standard'

  def index

  end

  def show

  end

  def new

  end

  def create

  end

  def copy

  end

  def edit

  end

  def update

  end

  def delete
    Campaign.find(params[:id]).destroy
    redirect_to action: 'index'
  end
end

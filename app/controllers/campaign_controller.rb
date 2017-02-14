# Controller for the campaign pages of this site
class CampaignController < ActionController::Base
  layout 'standard'

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    @campaign = Campaign.new
  end

  def create
    campaign_params = new_campaign_params
    @campaign = Campaign.new(campaign_params)
    if @campaign.save
      redirect_to action: 'show', id: @campaign
    else
      render action: 'new'
    end
  end

  def copy

  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
    campaign_params = update_campaign_params

    if @campaign.update_attributes(campaign_params)
      redirect_to action: 'show', id: @campaign
    else
      render action: 'edit'
    end
  end

  def destroy
    Campaign.find(params[:id]).destroy
    redirect_to action: 'index'
  end

  private

  def new_campaign_params
    params.require(:campaign).permit(:name, :description, :user_id)
  end

  def update_campaign_params
    params.require(:campaign).permit(:name, :description)
  end

end

class Spree::Admin::SweepstakesController < Spree::Admin::ResourceController
  before_filter :load_data
  respond_to :json, :only => [:enter]

  protected
  def location_after_save
    if @sweepstake.created_at == @sweepstake.updated_at
      edit_admin_sweepstake_url(@sweepstake)
    else
      edit_admin_sweepstake_url(@sweepstake)
    end
  end

  def load_data
    @products = Spree::Product.where("user_id is null")
  end
end

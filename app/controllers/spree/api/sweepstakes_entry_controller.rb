class Spree::Api::SweepstakesEntryController < Spree::Api::BaseController
  respond_to :json
  def show
    respond_with(sweepstakes_entry)
  end

  def create
    authorize! :create, Spree::SweepstakesEntry
    @sweepstake = Spree::Sweepstake.where(:id => params[:sweepstake_id]).reject(&:expired?)
    if @sweepstake != nil
      @sweepstakes_entry = Spree::SweepstakesEntry.new
      @sweepstakes_entry.sweepstake_id = params[:sweepstake_id]
      @sweepstakes_entry.email = params[:accessToken]

      if @sweepstakes_entry.save
        puts "************ entry created = " + @sweepstakes_entry.id.to_s 
        respond_with(@sweepstakes_entry, :status => 201, :default_template => :show)
      else
        invalid_resource!(@sweepstakes_entry)
      end
    else
        invalid_resource!(@sweepstakes_entry)
    end
  end

  private

  def sweepstakes_entry
    @sweepstakes_entry ||= Spree::SweepstakesEntry.find(params[:id])
  end
end

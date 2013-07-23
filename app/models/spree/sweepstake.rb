class Spree::Sweepstake < ActiveRecord::Base
  attr_accessible :expires_at, :name, :description, :starts_at, :product_ids, :entry_ids
  has_and_belongs_to_many :products, :join_table => 'spree_sweepstakes_products'
  has_many :sweepstake_entries
  
  def expired?
    starts_at && Time.now < starts_at ||
    expires_at && Time.now > expires_at
  end
  
end

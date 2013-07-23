class CreateSpreeSweepstakesProducts < ActiveRecord::Migration
  def change
    create_table :spree_sweepstakes_products, :id => false, :force => true do |t|
      t.references :spree_sweepstake
      t.references :spree_product
    end
  end
end

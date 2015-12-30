# This migration comes from subscribem (originally 20151229134226)
class CreateSubscribemPlans < ActiveRecord::Migration
  def change
    create_table :subscribem_plans do |t|
      t.string :name
      t.float :price
      t.string :braintree_id

      t.timestamps null: false
    end
  end
end

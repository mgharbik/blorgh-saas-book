# This migration comes from subscribem (originally 20151230091246)
class AddBraintreeSubscriptionIdToSubscribemAccounts < ActiveRecord::Migration
  def change
    add_column :subscribem_accounts, :braintree_subscription_id, :string
  end
end

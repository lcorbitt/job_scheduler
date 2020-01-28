class AddAddressToLeads < ActiveRecord::Migration[6.0]
  def change
    add_column :leads, :address, :string
  end
end

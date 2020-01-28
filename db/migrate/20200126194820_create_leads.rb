class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :phone
      t.string :email
      t.text :notes
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end

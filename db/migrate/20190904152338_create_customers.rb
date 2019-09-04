class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :phone
      t.string :description
      t.boolean :in_black_list, default: false, null: false

      t.timestamps
    end
  end
end

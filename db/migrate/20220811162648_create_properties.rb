class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :state
      t.string :country
      t.string :headline

      t.timestamps
    end
  end
end

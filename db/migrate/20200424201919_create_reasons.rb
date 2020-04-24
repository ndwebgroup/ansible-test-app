class CreateReasons < ActiveRecord::Migration[5.2]
  def change
    create_table :reasons do |t|
      t.string :name
      t.text :description
      t.integer :importance

      t.timestamps
    end
  end
end

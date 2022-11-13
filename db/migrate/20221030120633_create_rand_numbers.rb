class CreateRandNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :rand_numbers do |t|
      t.integer :number
      t.timestamps
    end
  end
end

class CreateDimensions < ActiveRecord::Migration
  def change
    create_table :dimensions do |t|
      t.string :length
      t.string :width
      t.string :thickness
      t.integer :board_id
      t.string :volume

      t.timestamps
    end
  end
end

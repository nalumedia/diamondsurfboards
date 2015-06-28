class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :board_name
      t.text :board_description

      t.timestamps
    end
  end
end

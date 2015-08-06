class AddTypeIdToBoard < ActiveRecord::Migration
  def change
    add_column :boards, :type_id, :integer
  end
end

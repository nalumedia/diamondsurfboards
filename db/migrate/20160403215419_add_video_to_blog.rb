class AddVideoToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :video, :text
  end
end

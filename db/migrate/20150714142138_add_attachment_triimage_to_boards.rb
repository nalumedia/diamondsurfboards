class AddAttachmentTriimageToBoards < ActiveRecord::Migration
  def self.up
    change_table :boards do |t|
      t.attachment :triimage
    end
  end

  def self.down
    remove_attachment :boards, :triimage
  end
end

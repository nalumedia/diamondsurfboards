class AddAttachmentRockerlogoToBoards < ActiveRecord::Migration
  def self.up
    change_table :boards do |t|
      t.attachment :rockerlogo
    end
  end

  def self.down
    remove_attachment :boards, :rockerlogo
  end
end

class AddAttachmentLogoToBoards < ActiveRecord::Migration
  def self.up
    change_table :boards do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :boards, :logo
  end
end

class AddAttachmentSkilllogoToBoards < ActiveRecord::Migration
  def self.up
    change_table :boards do |t|
      t.attachment :skilllogo
    end
  end

  def self.down
    remove_attachment :boards, :skilllogo
  end
end

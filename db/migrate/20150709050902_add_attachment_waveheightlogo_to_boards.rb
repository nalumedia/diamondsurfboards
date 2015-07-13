class AddAttachmentWaveheightlogoToBoards < ActiveRecord::Migration
  def self.up
    change_table :boards do |t|
      t.attachment :waveheightlogo
    end
  end

  def self.down
    remove_attachment :boards, :waveheightlogo
  end
end

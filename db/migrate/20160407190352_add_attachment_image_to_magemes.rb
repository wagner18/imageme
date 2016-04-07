class AddAttachmentImageToMagemes < ActiveRecord::Migration
  def self.up
    change_table :magemes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :magemes, :image
  end
end

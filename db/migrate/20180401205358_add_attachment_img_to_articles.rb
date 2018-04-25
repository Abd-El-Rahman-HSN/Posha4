class AddAttachmentImgToArticles < ActiveRecord::Migration[5.2]
  def self.up
    change_table :articles do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :articles, :img
  end
end

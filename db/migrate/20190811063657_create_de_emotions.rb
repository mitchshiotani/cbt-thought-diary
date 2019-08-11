class CreateDeEmotions < ActiveRecord::Migration[5.2]
  def change
    create_table :de_emotions do |t|
      t.references :diary_entry
      t.references :emotion
      t.timestamps
    end
  end
end

class CreateEmotions < ActiveRecord::Migration[5.2]
  def change
    create_table :emotions do |t|
      t.string :name
      t.references :de_emotion

      t.timestamps
    end
  end
end

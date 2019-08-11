class CreateDiaryEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :diary_entries do |t|
      t.date :date
      t.text :a_event
      t.string :c_emotion
      t.integer :c_emotion_rate
      t.text :c_physical_sensation
      t.text :b_self_statement
      t.text :b_hot_thought
      t.integer :b_hot_thought_rate
      t.text :d_facts_for
      t.text :d_facts_against
      t.text :d_other_view
      t.text :d_different_view
      t.integer :e_balanced_thought
      t.integer :e_hot_thought_rerate
      t.integer :e_emotion_rerate
      t.references :de_emotion
      t.references :deut_style

      t.timestamps
    end
  end
end

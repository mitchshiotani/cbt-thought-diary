class CreateDeutStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :deut_styles do |t|
      t.references :diary_entry
      t.references :ut_style

      t.timestamps
    end
  end
end

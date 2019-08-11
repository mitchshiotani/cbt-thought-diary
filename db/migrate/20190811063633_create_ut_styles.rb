class CreateUtStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :ut_styles do |t|
      t.string :name
      t.references :deut_style

      t.timestamps
    end
  end
end

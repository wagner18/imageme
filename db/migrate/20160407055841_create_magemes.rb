class CreateMagemes < ActiveRecord::Migration
  def change
    create_table :magemes do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end

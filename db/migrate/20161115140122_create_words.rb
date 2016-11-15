class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :name
      t.string :translation
      t.references :user, foreign_key: true
      t.boolean :know
      t.boolean :active

      t.timestamps
    end
  end
end

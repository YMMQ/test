class CreateAddvs < ActiveRecord::Migration[5.0]
  def change
    create_table :addvs do |t|
      t.string :title
      t.string :image
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end

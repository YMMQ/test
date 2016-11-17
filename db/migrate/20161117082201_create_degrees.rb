class CreateDegrees < ActiveRecord::Migration[5.0]
  def change
    create_table :degrees do |t|
      t.references :dtype, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

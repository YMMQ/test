class CreateDtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :dtypes do |t|
      t.string :name
      t.string :remarks

      t.timestamps
    end
  end
end

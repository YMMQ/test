class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.references :addv, foreign_key: true
      t.references :profession, foreign_key: true
      t.references :degree, foreign_key: true
      t.references :city, foreign_key: true
      t.integer :qty

      t.timestamps
    end
  end
end

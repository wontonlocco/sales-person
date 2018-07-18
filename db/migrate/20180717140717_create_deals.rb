class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.references :person, foreign_key: true
      t.string :title
      t.string :description
      t.string :amount

      t.timestamps
    end
  end
end

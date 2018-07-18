class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.text :name
      t.text :address

      t.timestamps
    end
  end
end

class CreateTotalAnnualCompensations < ActiveRecord::Migration[5.2]
  def change
    create_table :total_annual_compensations do |t|
      t.references :person, foreign_key: true
      t.string :fixed_salary
      t.string :total_sales

      t.timestamps
    end
  end
end

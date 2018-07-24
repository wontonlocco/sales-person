class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
  	remove_foreign_key :deals, :people
  	add_foreign_key :deals, :people, on_delete: :cascade
  end
end

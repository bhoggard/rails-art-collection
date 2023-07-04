class CreateNationalities < ActiveRecord::Migration[7.0]
  def change
    create_table :nationalities do |t|
      t.string :name, null: false
    end
    add_index :nationalities, :name, unique: true
  end
end

class CreateProfs < ActiveRecord::Migration
  def change
    create_table :profs do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end

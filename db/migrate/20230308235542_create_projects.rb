class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :status, null: false
      t.string :description, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

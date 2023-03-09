class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :change_type, null: false, default: 'Comment'
      t.string :status
      t.string :new_status
      t.references :users, foreign_key: true
      t.references :projects, foreign_key: true
      t.timestamps
    end
  end
end

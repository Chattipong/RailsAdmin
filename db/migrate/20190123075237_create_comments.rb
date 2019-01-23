class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :cmttitle
      t.text :body
      t.references :User, foreign_key: true
      t.references :Post, foreign_key: true

      t.timestamps
    end
  end
end

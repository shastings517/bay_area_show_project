class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :password_digest
      t.string :email
      t.string :image_url
      t.integer :age
      t.string :sex

      t.timestamps null: false
    end
  end
end

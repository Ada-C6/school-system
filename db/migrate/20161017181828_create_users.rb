class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :uid, null: false # this is the identifier provided by Github
      t.string :provider, null: false # this tells us who provided the identifier

      t.timestamps null: false
    end
  end
end

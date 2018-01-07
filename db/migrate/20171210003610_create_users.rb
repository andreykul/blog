class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      
      t.string :email, null: false, default: "", index: true   
      t.string :name, null: false, default: ""
      t.attachment :picture

      t.timestamps null: false
    end
  end
end

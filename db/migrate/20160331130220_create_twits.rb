class CreateTwits < ActiveRecord::Migration
  def change
    create_table :twits do |t|
      t.belongs_to :user_name, index: true, foreign_key: true
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end

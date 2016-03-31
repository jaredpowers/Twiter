class CreateTwits < ActiveRecord::Migration
  def change
    create_table :twits do |t|
      t.text :twit
      t.belongs_to :user, index: true
    end
  end
end

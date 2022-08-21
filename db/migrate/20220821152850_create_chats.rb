class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :room, null: false, foreign_key: true
      t.string :message,     null: false

      t.timestamps
    end
  end
end

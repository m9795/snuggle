class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.string :title,    null: false
      t.string :content

      t.timestamps
    end
  end
end

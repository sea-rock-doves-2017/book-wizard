class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title, null:false
      t.string :genre, null:false
      t.string :author, null:false
      t.string :synopsis

      t.timestamps
    end
  end
end

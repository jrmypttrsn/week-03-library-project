class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :ISBN
    end
  end
end
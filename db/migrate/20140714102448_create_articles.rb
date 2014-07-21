class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :bookName

      t.timestamps
    end
  end
end

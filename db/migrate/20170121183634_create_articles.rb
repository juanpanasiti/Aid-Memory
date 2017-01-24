class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :introduction
      t.text :body
      t.boolean :published

      t.timestamps
    end
  end
end

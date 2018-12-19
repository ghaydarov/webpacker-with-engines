class CreateComponentOneArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :component_one_articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end

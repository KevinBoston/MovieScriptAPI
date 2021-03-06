class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :starring
      t.string :description
      t.string :url
      t.text :notes
      t.integer :list_id
      t.timestamps
    end
  end
end

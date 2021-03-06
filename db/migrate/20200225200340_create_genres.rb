class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.belongs_to :user, null: false, foreign_key: true
      t.string :photo_url
      t.timestamps
    end
  end
end

class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :host
      t.time :episode_length
      t.string :url
      t.belongs_to :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :movie_title
      t.datetime :start_time
      t.references :cinema, null: false, foreign_key: true

      t.timestamps
    end
  end
end

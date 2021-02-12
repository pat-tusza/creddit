class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.belongs_to :user_id, null: false, foreign_key: true
      t.belongs_to :activity_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end

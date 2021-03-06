class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :image_url

      # foreign key garden_id
      # index for this key
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end

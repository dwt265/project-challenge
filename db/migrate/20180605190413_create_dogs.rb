class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :owner
      t.timestamp :birthday
      t.timestamp :adoption_date
      t.text :description
      t.timestamps
    end

    create_table :attributes do |t|
      t.integer :dog_id
      t.string :user
      t.string :type
      t.timestamp :attribute_date
    end
  end
end

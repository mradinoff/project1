class CreateAvatars < ActiveRecord::Migration[5.1]
  def change
    create_table :avatars do |t|
      t.text :display_name
      t.text :display_photo
      t.text :interests
      t.date :dob
      t.text :location
      t.text :hiking_ability

      t.timestamps
    end
  end
end

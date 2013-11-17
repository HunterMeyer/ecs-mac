class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :topic
      t.string :email

      t.timestamps
    end
  end
end

class CreateGens < ActiveRecord::Migration
  def change
    create_table :gens do |t|
      t.string :prenom
      t.string :nom
      t.string :pseudo
      t.string :password
      t.string :avatar
      t.string :email
      t.date :dob

      t.timestamps
    end
  end
end

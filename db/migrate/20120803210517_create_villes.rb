class CreateVilles < ActiveRecord::Migration
  def change
    create_table :villes do |t|
      t.string :nom
      t.string :coordonnees

      t.timestamps
    end
  end
end

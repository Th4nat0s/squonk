class CreateQuartiers < ActiveRecord::Migration
  def change
    create_table :quartiers do |t|
      t.string :nom
      t.string :coordonnees

      t.timestamps
    end
  end
end

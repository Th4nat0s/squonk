class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :titre
      t.text :texte
      t.string :resource

      t.timestamps
    end
  end
end

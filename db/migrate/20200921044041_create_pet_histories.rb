class CreatePetHistories < ActiveRecord::Migration[5.2] #punto uno hecho
  def change
    create_table :pet_histories do |t|
      t.float :weight
      t.float :height
      t.string :description
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
#el crud en verdad no es algo como una carpeta si no que son una suma de acciones
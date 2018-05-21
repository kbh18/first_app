class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :star
      t.string :nation

      t.timestamps
    end
  end
end

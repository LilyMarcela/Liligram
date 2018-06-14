class CreateEntry < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :Author
      t.string :Photo_url
      t.date :Date_taken
    end
  end
end

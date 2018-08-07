class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :imie
      t.string :nazwisko
      t.string :miejscowosc

      t.timestamps
    end
  end
end

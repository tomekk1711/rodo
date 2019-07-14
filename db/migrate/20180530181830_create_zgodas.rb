class CreateZgodas < ActiveRecord::Migration[5.2]
  def up
    create_table :zgodas do |t|
    	t.string "imie"
    	t.string "nazwisko"
    	t.string "miejscowosc"
    	t.integer "nrdomu"
    	t.integer "nrmieszkania"
    	t.boolean "potwierdzenie", :default =>true
    	t.integer "pozycja"
    	t.text "uwagi"
        t.timestamps
    end
  end
  def down
	drop_table :zgodas
  end
end

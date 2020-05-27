class Search < ApplicationRecord

    def search_udzielone

   udzielone = Zgoda.all

   
   udzielone = udzielone.where(["nazwisko LIKE ?", "%#{nazwisko}%"]) if nazwisko.present udzielone = udzielone.where(["miejscowosc LIKE ?", "%#{miejscowosc}%"]) if miejscowosc.present?
    
    
end
end
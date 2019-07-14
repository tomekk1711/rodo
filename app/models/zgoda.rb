class Zgoda < ApplicationRecord

scope :potwierdzenie, lambda{where(:potwierdzenie => true)}
scope :sortuj, lambda{order("zgodas.pozycja ASC")}
scope :najnowsza, lambda{order("zgodas.created_at DESC")}
end

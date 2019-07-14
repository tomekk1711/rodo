class ZgodasController < ApplicationController
  
layout "admin"
def szukaj
end


before_action :sprawdz_logowanie
  def index
    @udzielone = Zgoda.sortuj
  end

  def pokaz
    @zgoda=Zgoda.find(params[:id])
  end

  def nowa
    @zgoda = Zgoda.new({:uwagi=>"Brak"})
    @licznik = Zgoda.count + 1
  end

  def utworz
    @udzielone = Zgoda.new(udzielone_parametry)
    if @udzielone.save
      flash[:notice] = "Zgoda została pomyślnie utworzona"
      redirect_to(:action=>'index')
    else
      @licznik = Zgoda.count + 1
      render('nowa')
    end
  end


  def edycja
    @zgoda=Zgoda.find(params[:id])
    @licznik = Zgoda.count
  end
 
  def aktualizuj
    @zgoda=Zgoda.find(params[:id])
  if @zgoda.update_attributes(udzielone_parametry)
    flash[:notice] = "Zgoda została pomyślnie zmodyfikowana"
    redirect_to(:action=>'pokaz', :id => @zgoda.id)
  else
    @licznik = Zgoda.count
    render('edycja')
  end
end

  def usun
    @zgoda=Zgoda.find(params[:id])
  end
  def kasuj
    zgoda = Zgoda.find(params[:id]).destroy
    flash[:notice] = "Zgoda '#{zgoda.imie}' '#{zgoda.nazwisko}' została pomyślnie usunięta"
    redirect_to(:action=>'index') 
  end
  private

  def udzielone_parametry 
    params.require(:zgoda).permit(:imie, :nazwisko, :miejscowosc, :nrdomu, :nrmieszkania, :potwierdzenie, :uwagi, :pozycja)
  end
end

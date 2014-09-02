package pl.altkom.magazyn.model;

import java.io.Serializable;
import javax.validation.constraints.Min;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class Towar implements Serializable {

	private long id;
        @NotEmpty(message = "Nazwa produktu jest wymagana")
        @Length(max = 40)
	private String nazwa;
        @NotEmpty(message = "Opis produktu jest wymagany")
        @Length(max = 80)
        private String opis;
        @Min(value=0)
	private double cena;
        @Min(value=0)
	private int ilosc;
        @NotEmpty (message = "Kategoria jest wymagana")
	private String kategoria;

	public Towar(long id, String nazwa, String opis, double cena, int ilosc,
			String kategoria) {
		this.id = id;
		this.nazwa = nazwa;
		this.opis = opis;
		this.cena = cena;
		this.ilosc = ilosc;
		this.kategoria = kategoria;
	}

	public Towar() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
       
	public String getNazwa() {
		return nazwa;
	}

	public void setNazwa(String nazwa) {
		this.nazwa = nazwa;
	}
       
	public String getOpis() {
		return opis;
	}

	public void setOpis(String opis) {
		this.opis = opis;
	}
      
	public double getCena() {
		return cena;
	}

	public void setCena(double cena) {
		this.cena = cena;
	}
       
	public int getIlosc() {
		return ilosc;
	}

	public void setIlosc(int ilosc) {
		this.ilosc = ilosc;
	}
      
	public String getKategoria() {
		return kategoria;
	}

	public void setKategoria(String kategoria) {
		this.kategoria = kategoria;
	}

}

package pl.altkom.magazyn.dao;

import java.util.List;
import pl.altkom.magazyn.model.Towar;

public interface MagazynDao {

	public void addTowar(Towar t);

	public void updateTowar(Towar t);

	public Towar getTowar(long id);

	public void removeTowar(long id);

	public List<Towar> getAllSortedTowar(int atrybut, String s);
        
        public List<Towar>getSortedByKategory(String s );
        
     

}

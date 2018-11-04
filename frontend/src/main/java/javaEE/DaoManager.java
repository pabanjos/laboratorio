package javaEE;

import java.util.ArrayList;
import java.util.List;

public class DaoManager extends Dao {

	public List<Data> selectBetween(final Integer start, final Integer qtd) throws Exception {
		open();
		ps = con.prepareStatement("select * from Data limit ?, ?");
		ps.setInt(1, start - 1);
		ps.setInt(2, qtd);
		rs = ps.executeQuery();
		final List<Data> lista = new ArrayList<Data>();
		while (rs.next()) {
			lista.add(new Data(rs.getObject(1), rs.getObject(2), rs.getObject(3), rs.getObject(4), rs.getObject(5),
					rs.getObject(6), rs.getObject(7), rs.getObject(8), rs.getObject(9), rs.getObject(10)));
		}
		close();
		return lista;
	}

	public List<Data> selectAll() throws Exception {
		open();
		ps = con.prepareStatement("select * from Data");
		rs = ps.executeQuery();
		final List<Data> lista = new ArrayList<Data>();
		while (rs.next()) {
			lista.add(new Data(rs.getObject(1), rs.getObject(2), rs.getObject(3), rs.getObject(4), rs.getObject(5),
					rs.getObject(6), rs.getObject(7), rs.getObject(8), rs.getObject(9), rs.getObject(10)));
		}
		close();
		return lista;
	}

}
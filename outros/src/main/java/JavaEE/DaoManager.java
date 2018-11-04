package JavaEE;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DaoManager {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;

	public void conectar() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useTimezone=true&serverTimezone=UTC",
				"root", "1234");
	}

	public List<Data> selectAll() throws Exception {
		conectar();
		ps = con.prepareStatement("select * from Data order by idData desc");
		rs = ps.executeQuery();
		final List<Data> lista = new ArrayList<Data>();
		while (rs.next()) {
			lista.add(new Data(rs.getObject(1), rs.getObject(2), rs.getObject(3), rs.getObject(4), rs.getObject(5),
					rs.getObject(6), rs.getObject(7), rs.getObject(8), rs.getObject(9), rs.getObject(10)));
		}
		con.close();
		return lista;
	}

	public List<Data> filterByMySQL(final String title, final Integer released1, final Integer released2,
			final Integer start, final Integer quantity) throws Exception {
		conectar();
		final String sql1 = "select * from Data ";
		final String sql2 = "where title like '%" + title + "%' and ";
		final String sql3 = "released between " + released1 + " and " + released2 + " ";
		final String sql4 = "limit " + start + ", " + quantity;
		ps = con.prepareStatement(sql1 + sql2 + sql3 + sql4);
		rs = ps.executeQuery();
		final List<Data> lista = new ArrayList<Data>();
		while (rs.next()) {
			lista.add(new Data(rs.getObject(1), rs.getObject(2), rs.getObject(3), rs.getObject(4), rs.getObject(5),
					rs.getObject(6), rs.getObject(7), rs.getObject(8), rs.getObject(9), rs.getObject(10)));
		}
		con.close();
		return lista;
	}

	public String selectChartist() throws Exception {
		conectar();
		ps = con.prepareStatement(
				"select released, count(released) from Data where released between 1995 and 2020 group by released");
		rs = ps.executeQuery();
		String released = "";
		String count = "";
		while (rs.next()) {
			released += rs.getInt(1);
			count += rs.getInt(2);
			if (!rs.isLast()) {
				released += ",";
				count += ",";
			}
		}
		con.close();
		return "{\"released\":[" + released + "],\"count\":[[" + count + "]]}";
	}

	public String selectGenres() throws Exception {
		conectar();
		ps = con.prepareStatement("select distinct genre from Data where genre is Not Null");
		rs = ps.executeQuery();
		String lista = "";
		while (rs.next()) {
			lista += rs.getString(1);
			if (!rs.isLast()) {
				lista += ",";
			}
		}
		con.close();
		return lista;
	}

	public String selectDirectors(final String genre) throws Exception {
		conectar();
		ps = con.prepareStatement("select distinct director from Data where genre=? and director is Not Null");
		ps.setString(1, genre);
		rs = ps.executeQuery();
		String lista = "";
		while (rs.next()) {
			lista += rs.getString(1);
			if (!rs.isLast()) {
				lista += ",";
			}
		}
		con.close();
		return lista;
	}

}
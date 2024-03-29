package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.product_dtls;

public class ProductDAOImpl implements ProductDAO {

	private Connection conn;

	public ProductDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean addProducts(product_dtls p) {

		boolean f = false;
		try {
			String sql = "insert into product(product_name,product_brand,product_price,product_Category,product_photo) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, p.getProduct_name());
			ps.setString(2, p.getProduct_brand());
			ps.setString(3, p.getProduct_price());
			ps.setString(4, p.getProduct_Category());
			ps.setString(5, p.getProduct_photo());
			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	@Override
	public List<product_dtls> getAllProducts() {

		List<product_dtls> list = new ArrayList<product_dtls>();
		product_dtls b = null;

		try {

			String sql = "select * from product";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				b = new product_dtls();
				b.setProduct_Id(rs.getInt(1));
				b.setProduct_name(rs.getString(2));
				b.setProduct_brand(rs.getString(3));
				b.setProduct_price(rs.getString(4));
				b.setProduct_Category(rs.getString(5));
				b.setProduct_photo(rs.getString(6));
				list.add(b);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	@Override
	public product_dtls getProductId(int id) {
		product_dtls b = null;
		try {

			String sql = "select * from product where product_Id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				b = new product_dtls();
				b = new product_dtls();
				b.setProduct_Id(rs.getInt(1));
				b.setProduct_name(rs.getString(2));
				b.setProduct_brand(rs.getString(3));
				b.setProduct_price(rs.getString(4));
				b.setProduct_Category(rs.getString(5));
				b.setProduct_photo(rs.getString(6));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return b;
	}

	@Override
	public boolean deleteProduct(int id) {
		boolean f = false;

		try {

			String sql = "delete from product where product_Id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	@Override
	public boolean EditProducts(product_dtls b) {
		boolean f = false;

		try {
			String sql = "update product set product_name=?,product_brand=?,product_price=?,product_Category=? where product_Id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getProduct_name());
			ps.setString(2, b.getProduct_brand());
			ps.setString(3, b.getProduct_price());
			ps.setString(4, b.getProduct_Category());
			ps.setInt(5, b.getProduct_Id());
			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	@Override
	public List<product_dtls> getAllHouseHold() {
		List<product_dtls> list = new ArrayList<>();
		product_dtls b = null;
		try {
			String sql = "SELECT * FROM product WHERE product_Category = ? ORDER BY product_Id DESC ";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Household care");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new product_dtls();
				b.setProduct_Id(rs.getInt(1));
				b.setProduct_name(rs.getString(2));
				b.setProduct_brand(rs.getString(3));
				b.setProduct_price(rs.getString(4));
				b.setProduct_Category(rs.getString(5));

				b.setProduct_photo(rs.getString(6));
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<product_dtls> getAllsnacksBeverages() {
		List<product_dtls> list = new ArrayList<>();
		product_dtls b = null;
		try {
			String sql = "SELECT * FROM product WHERE product_Category = ? ORDER BY product_Id DESC ";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Snackes");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new product_dtls();
				b.setProduct_Id(rs.getInt(1));
				b.setProduct_name(rs.getString(2));
				b.setProduct_brand(rs.getString(3));
				b.setProduct_price(rs.getString(4));
				b.setProduct_Category(rs.getString(5));

				b.setProduct_photo(rs.getString(6));
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<product_dtls> getAllstaples() {
		List<product_dtls> list = new ArrayList<>();
		product_dtls b = null;
		try {
			String sql = "SELECT * FROM product WHERE product_Category = ? ORDER BY product_Id DESC ";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "staples");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new product_dtls();
				b.setProduct_Id(rs.getInt(1));
				b.setProduct_name(rs.getString(2));
				b.setProduct_brand(rs.getString(3));
				b.setProduct_price(rs.getString(4));
				b.setProduct_Category(rs.getString(5));

				b.setProduct_photo(rs.getString(6));
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<product_dtls> getAllpackagefood() {
		List<product_dtls> list = new ArrayList<>();
		product_dtls b = null;
		try {
			String sql = "SELECT * FROM product WHERE product_Category = ? ORDER BY product_Id DESC ";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Packaged Food");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new product_dtls();
				b.setProduct_Id(rs.getInt(1));
				b.setProduct_name(rs.getString(2));
				b.setProduct_brand(rs.getString(3));
				b.setProduct_price(rs.getString(4));
				b.setProduct_Category(rs.getString(5));

				b.setProduct_photo(rs.getString(6));
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	
	@Override
	public List<product_dtls> getpackagefood() {
		List<product_dtls> list = new ArrayList<>();
		product_dtls b = null;
		try {
			String sql = "SELECT * FROM product WHERE product_Category = ? ORDER BY product_Id DESC ";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Packaged Food");
			ResultSet rs = ps.executeQuery();
			int i=1;
			while (rs.next() && i<= 5) {
				b = new product_dtls();
				b.setProduct_Id(rs.getInt(1));
				b.setProduct_name(rs.getString(2));
				b.setProduct_brand(rs.getString(3));
				b.setProduct_price(rs.getString(4));
				b.setProduct_Category(rs.getString(5));

				b.setProduct_photo(rs.getString(6));
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	@Override
	public List<product_dtls> getstaples() {
		List<product_dtls> list = new ArrayList<>();
		product_dtls b = null;
		try {
			String sql = "SELECT * FROM product WHERE product_Category = ? ORDER BY product_Id DESC ";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "staples");
			ResultSet rs = ps.executeQuery();
			int i=1;
			while (rs.next() && i<=5) {
				b = new product_dtls();
				b.setProduct_Id(rs.getInt(1));
				b.setProduct_name(rs.getString(2));
				b.setProduct_brand(rs.getString(3));
				b.setProduct_price(rs.getString(4));
				b.setProduct_Category(rs.getString(5));

				b.setProduct_photo(rs.getString(6));
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	
	
	
}

package com.mycompany.myapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

import com.mycompany.myapp.dto.Photo;

@Component
public class PhotoDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public Integer insert(Photo photo){
		Integer pk = null;
		String sql = "insert into ngphoto (photo_title, photo_content, photo_writer, photo_date, photo_original_file_name, photo_filesystem_name, photo_content_type) values(?, ?, ?, now(), ?, ?, ?)";
		KeyHolder keyHolder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection conn) throws SQLException {
				PreparedStatement pstmt = conn.prepareStatement(sql, new String[] {"photo_no"});
				pstmt.setString(1, photo.getTitle());
				pstmt.setString(2, photo.getContent());
				pstmt.setString(3, photo.getWriter());
				pstmt.setString(4, photo.getOriginalFileName());
				pstmt.setString(5, photo.getFilesystemName());
				pstmt.setString(6, photo.getContentType());
				return pstmt;
			}
			
		},keyHolder);
		Number keyNumber = keyHolder.getKey();
		pk = keyNumber.intValue();
		return pk;
	}
	
	public List<Photo> selectByPage(int pageNo, int rowsPerPage){
		String sql = "";
		sql += "select photo_no, photo_title, photo_writer, photo_date, photo_hitcount " ;
		sql += "from ngphoto ";
		sql += "order by photo_no desc ";
		sql += "limit ?,?";
		
		
		List<Photo> list = jdbcTemplate.query(
				sql,
				new Object[]{(pageNo-1)*rowsPerPage, rowsPerPage},
				new RowMapper<Photo>(){

					@Override
					public Photo mapRow(ResultSet rs, int rowNum) throws SQLException {
						Photo photo = new Photo();
						photo.setNo(rs.getInt("photo_no"));
						photo.setTitle(rs.getString("photo_title"));
						photo.setDate(rs.getDate("photo_date"));
						photo.setWriter(rs.getString("photo_writer"));
						photo.setHitcount(rs.getInt("photo_hitcount"));
						return photo;
					}
					
				});
		
		return list;
	}
	
	
	
}

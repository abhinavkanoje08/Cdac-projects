package com.net.educos.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class VideoMapper implements RowMapper<Video> {

	@Override
	public Video mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Video v = new Video();
		
		v.setVid(rs.getInt("vid"));
		v.setUploadersname(rs.getString("uploadersname"));
		v.setVideosubject(rs.getString("videosubject"));
		v.setVideolink(rs.getString("videolink"));
		
		return v;
	}

}

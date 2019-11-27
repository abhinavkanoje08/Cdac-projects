package com.net.educos.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import com.net.educos.model.Video;
import com.net.educos.model.VideoMapper;

@Repository
public class Vdaoimpl implements Vdao  {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public void addVideo(Video video) {
		// TODO Auto-generated method stub
		
		String qry = "INSERT Into video(videolink,uploadersname,videosubject) values(?,?,?)";
		jdbcTemplate.update(qry,video.getVideolink(),video.getUploadersname(),video.getVideosubject());

		
	}

	@Override
	public List<Video> getAllVideo() {
		// TODO Auto-generated method stub
		String qry = "SELECT * FROM video";
		RowMapper<Video> rowMapper = new VideoMapper();
		List<Video> vidlist = jdbcTemplate.query(qry,rowMapper);
		// TODO Auto-generated method stub
		return vidlist;

		
	}

	@Override
	public Video findVideoById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateVideo(Video video) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteVideo(int id) {
		// TODO Auto-generated method stub
		
	}

}

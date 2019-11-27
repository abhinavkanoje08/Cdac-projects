package com.net.educos.dao;

import java.util.List;


import com.net.educos.model.Video;

public interface Vdao {
	
	public void addVideo(Video video);
	public List<Video> getAllVideo();
	public Video findVideoById(int id);
	public void updateVideo(Video video);
	public void deleteVideo(int id);
}


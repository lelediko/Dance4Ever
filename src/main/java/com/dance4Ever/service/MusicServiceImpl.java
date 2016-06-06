package com.dance4Ever.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dance4Ever.domain.Musics;
import com.dance4Ever.mapper.MusicMapper;

@Service
public class MusicServiceImpl implements MusicService {

	@Autowired
	private MusicMapper musicMapper;
	
	public void createMusic(Musics music) {
		musicMapper.createMusic(music);
	}

	public List<Musics> mlist(String userId) {
		return musicMapper.getMusics(userId);
	}

	@Override
	public Musics download(String musicId) {
		return musicMapper.download(musicId);
	}

}

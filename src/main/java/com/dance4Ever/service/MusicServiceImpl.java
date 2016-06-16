package com.dance4Ever.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dance4Ever.domain.Musics;
import com.dance4Ever.domain.UserMusicsLove;
import com.dance4Ever.mapper.MusicMapper;
import com.dance4Ever.mapper.UserMusicsLoveMapper;

@Service
public class MusicServiceImpl implements MusicService {

	@Autowired
	private MusicMapper musicMapper;
	@Autowired
	private UserMusicsLoveMapper userMusicsLoveMapper;
	
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

	@Override
	public void addtoLove(UserMusicsLove userMusicsLove) {
		userMusicsLoveMapper.addtoLove(userMusicsLove);
		
	}

	@Override
	public List<Musics> mmlist() {
		
		return musicMapper.mmlist();
	}

	@Override
	public List<Musics> getMusicIds(String userId) {
		List<String> musicIdList = userMusicsLoveMapper.getMusicsId(userId);
		List<Musics> mlist = new ArrayList<Musics>();
		for(int i = 0 ; i < musicIdList.size() ; i++){
			String musicId = musicIdList.get(i);
			Musics musics = musicMapper.download(musicId);
			mlist.add(musics);
		}
		return mlist;
	}

	@Override
	public void deleteLoveMusic(String musicId, String userId) {
		userMusicsLoveMapper.deleteLoveMusic(musicId, userId);
	}


}

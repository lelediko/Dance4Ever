package com.dance4Ever.service;

import java.util.List;

import com.dance4Ever.domain.Musics;
import com.dance4Ever.domain.UserMusicsLove;

public interface MusicService {
	public void createMusic(Musics music);
	public List<Musics> mlist(String userId);
	public Musics download(String musicId);
	public void addtoLove(UserMusicsLove userMusicsLove);
	public List<Musics> mmlist();
	public List<Musics> getMusicIds(String userId);
	public void deleteLoveMusic(String musicId , String userId);
}

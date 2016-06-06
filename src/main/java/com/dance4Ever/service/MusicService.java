package com.dance4Ever.service;

import java.util.List;

import com.dance4Ever.domain.Musics;

public interface MusicService {
	public void createMusic(Musics music);
	public List<Musics> mlist(String userId);
	public Musics download(String musicId);
}

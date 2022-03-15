package com.pp.peterpet.tour;

import java.util.List;

public interface TourMapper {

	public List<TourDTO> getAllTour(TourDTO tt);

	public List<TourDTO> getTour(TourDTO tt);
	
	public List<TourDTO> tourView(TourDTO tt);

	public TourDTO checkTour(TourDTO t);
	

	public int putTour(TourDTO p_in);

	public int updateTour(TourDTO p_up);
	



}

package com.rjsk.mvc.data.dao;

import java.util.List;

import com.rjsk.mvc.data.entities.Review;

public interface ReviewDao {
	Review addReview(Review review);
	List<Review> displayReview();
}

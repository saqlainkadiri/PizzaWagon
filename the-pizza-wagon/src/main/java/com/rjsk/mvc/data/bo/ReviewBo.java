package com.rjsk.mvc.data.bo;

import java.util.List;


import org.springframework.stereotype.Service;

import com.rjsk.mvc.data.entities.Review;

@Service
public interface ReviewBo {
	Review addReview(Review review);
	List<Review> displayReview();
}
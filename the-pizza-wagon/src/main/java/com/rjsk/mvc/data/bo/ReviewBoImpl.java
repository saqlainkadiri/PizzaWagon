package com.rjsk.mvc.data.bo;
import java.util.List;

import com.rjsk.mvc.data.dao.ReviewDao;
import com.rjsk.mvc.data.entities.Review;
public class ReviewBoImpl implements ReviewBo{
	private final ReviewDao reviewDao;
	public ReviewBoImpl(ReviewDao dao){
		this.reviewDao=dao;
	}
	@Override
	public List<Review> displayReview() {
		return reviewDao.displayReview();
	}
	public Review addReview(Review review) {
		return reviewDao.addReview(review);
	};
}

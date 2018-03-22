package com.rjsk.mvc.data.bo;

import java.util.List;
import org.springframework.stereotype.Service;
import com.rjsk.mvc.data.entities.Item;

@Service
public interface ItemBo {
	List<Item> displayItems();
}

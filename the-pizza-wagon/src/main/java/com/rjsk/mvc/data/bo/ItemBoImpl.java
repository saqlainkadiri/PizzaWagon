package com.rjsk.mvc.data.bo;

import java.util.List;

import com.rjsk.mvc.data.dao.ItemDao;
import com.rjsk.mvc.data.entities.Item;
public class ItemBoImpl implements ItemBo {
	private final ItemDao itemDao;
	public ItemBoImpl(ItemDao dao){
		this.itemDao=dao;
	}
	@Override
	public List<Item> displayItems() {
		return itemDao.displayItems();
	}

}

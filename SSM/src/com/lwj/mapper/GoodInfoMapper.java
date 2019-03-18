package com.lwj.mapper;

import java.util.List;
import com.lwj.bean.GoodInfo;

public interface GoodInfoMapper {
	 public List<GoodInfo> query(); 
	 public List<GoodInfo> queryByKind(String kind); 
	 public GoodInfo queryById(String id); 
     public void removeRyIds(String[] ids);
}

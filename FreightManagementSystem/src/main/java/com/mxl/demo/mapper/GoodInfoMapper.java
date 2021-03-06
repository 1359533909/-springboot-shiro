package com.mxl.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.Page;
import com.mxl.demo.entity.GoodInfo;

public interface GoodInfoMapper {
	public Page<GoodInfo> selectAll();
	public Page<GoodInfo> selectAllByStation(GoodInfo gi);
}

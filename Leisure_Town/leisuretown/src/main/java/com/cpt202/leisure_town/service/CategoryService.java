package com.cpt202.leisure_town.service;

import com.cpt202.leisure_town.vo.CategoryVo;
import com.cpt202.leisure_town.vo.Result;

public interface CategoryService {
    CategoryVo findCategoryById(long categoryId);

    Result findAll();

    Result findAllDetail();

    Result categoryDetailById(Long id);
}

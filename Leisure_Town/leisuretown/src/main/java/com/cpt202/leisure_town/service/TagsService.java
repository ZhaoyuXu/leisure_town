package com.cpt202.leisure_town.service;



import com.cpt202.leisure_town.dao.mapper.TagMapper;
import com.cpt202.leisure_town.vo.Result;
import com.cpt202.leisure_town.vo.TagVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface TagsService {

    List<TagVo> findTagsByArticleId(Long articleId);

    Result findAll();

    Result hots(int limit);

    Result findAllDetail();

    Result findDetailById(Long id);
}

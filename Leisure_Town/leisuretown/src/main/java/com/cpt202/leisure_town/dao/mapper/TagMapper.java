package com.cpt202.leisure_town.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cpt202.leisure_town.dao.pojo.Tag;
import com.cpt202.leisure_town.vo.TagVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface TagMapper extends BaseMapper<Tag> {
    List<Tag> findTagsByArticleId(Long articleId);

    List<Long> findHotsTagIds(int limit);

    List<Tag> findTagsByTagIds(List<Long> tagIds);
}

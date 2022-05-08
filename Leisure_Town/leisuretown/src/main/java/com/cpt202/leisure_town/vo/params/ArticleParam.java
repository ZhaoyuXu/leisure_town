package com.cpt202.leisure_town.vo.params;

import com.cpt202.leisure_town.vo.CategoryVo;
import com.cpt202.leisure_town.vo.TagVo;
import lombok.Data;

import java.util.List;

@Data
public class ArticleParam {

    private Long id;

    private ArticleBodyParam body;

    private CategoryVo category;

    private String summary;

    private List<TagVo> tags;

    private String title;

    private String search;
}

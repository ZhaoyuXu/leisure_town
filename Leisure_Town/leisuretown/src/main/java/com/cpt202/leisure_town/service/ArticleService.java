package com.cpt202.leisure_town.service;

import com.cpt202.leisure_town.vo.ArticleVo;
import com.cpt202.leisure_town.vo.Result;
import com.cpt202.leisure_town.vo.params.ArticleParam;
import com.cpt202.leisure_town.vo.params.PageParams;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface ArticleService {
    Result listArticlesPage(PageParams pageParams);

    /**
     * 查看文章详情
     */
    Result findArticleById(long articleId);

    Result publish(ArticleParam articleParam);

    Result hotArticle(int limit);

    Result searchArticle(String search);
}

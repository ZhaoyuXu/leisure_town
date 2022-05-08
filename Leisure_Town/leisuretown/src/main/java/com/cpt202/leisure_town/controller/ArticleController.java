package com.cpt202.leisure_town.controller;

import com.cpt202.leisure_town.dao.pojo.Article;
import com.cpt202.leisure_town.service.ArticleService;
//import com.cpt202.leisure_town.vo.Archive;
import com.cpt202.leisure_town.vo.ArticleVo;
import com.cpt202.leisure_town.vo.Result;
import com.cpt202.leisure_town.vo.params.ArticleParam;
import com.cpt202.leisure_town.vo.params.PageParams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("articles")
public class ArticleController {

    @Autowired
    private ArticleService articleService;
	//Result是统一结果返回
    @PostMapping
    public Result articles(@RequestBody PageParams pageParams) {
        //ArticleVo 页面接收的数据
        return articleService.listArticlesPage(pageParams);
//
//        return Result.success(articles);
    }

    @PostMapping("hot")
    public Result hotArticle(){
        int limit = 6;
        return articleService.hotArticle(limit);
    }

    @PostMapping("view/{id}")
    public Result findArticleById(@PathVariable("id") long articleId){
        return articleService.findArticleById(articleId);
    }

    @PostMapping("publish")
    public Result publish(@RequestBody ArticleParam articleParam){
        return articleService.publish(articleParam);
    }

    @PostMapping("search")
    public Result search(@RequestBody ArticleParam articleParam){
        //写一个搜索接口
        String search = articleParam.getSearch();
        return articleService.searchArticle(search);
    }
}

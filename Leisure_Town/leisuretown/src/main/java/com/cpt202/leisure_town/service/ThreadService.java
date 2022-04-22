package com.cpt202.leisure_town.service;

import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.conditions.update.LambdaUpdateChainWrapper;
import com.cpt202.leisure_town.dao.mapper.ArticleMapper;
import com.cpt202.leisure_town.dao.pojo.Article;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

@Component
public class ThreadService {
    @Async("taskExecutor")
    public void updateArticleViewCount(ArticleMapper articleMapper, Article article) {
        try {
            //经过1秒更新阅读次数
            Thread.sleep(1000);
            int viewCounts = article.getViewCounts();
            Article articleUpdate = new Article();
            articleUpdate.setViewCounts(viewCounts + 1);
            LambdaUpdateWrapper<Article> updateWrapper = new LambdaUpdateWrapper<>();
            updateWrapper.eq(Article::getId, article.getId());
            updateWrapper.eq(Article::getViewCounts,viewCounts);
            articleMapper.update(articleUpdate, updateWrapper);
            System.out.println("更新成功...");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
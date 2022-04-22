package com.cpt202.leisure_town.service;

import com.cpt202.leisure_town.vo.Result;
import com.cpt202.leisure_town.vo.params.CommentParam;

public interface CommentsService{
    Result commentsByArticleId(Long id);

    Result comment(CommentParam commentParam);
}

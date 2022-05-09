package com.cpt202.leisure_town.controller;


import com.cpt202.leisure_town.service.TagsService;
import com.cpt202.leisure_town.vo.Result;
import com.cpt202.leisure_town.vo.TagVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("tags")
public class TagsController {

    @Autowired
    private TagsService tagsService;


    // 路径 tags/hot
    @GetMapping("hot")
    public Result hot(){
        int limit =6;
        return tagsService.hots(limit);
    }

    @GetMapping
    public Result findAll(){
        return tagsService.findAll();
    }

    @GetMapping("detail")
    public Result findAllDetail(){
        return tagsService.findAllDetail();
    }

    @GetMapping("detail/{id}")
    public Result findDetailById(@PathVariable("id") Long id){
        return tagsService.findDetailById(id);
    }
}

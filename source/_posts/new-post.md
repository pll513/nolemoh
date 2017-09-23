---
title: new post
date: 2017-09-08 00:15:53
categories:
- programming
tags:
- python
- 数学
- AI
---

Welcome to [Hexo](https://hexo.io/)! This is your very first post. Check [documentation](https://hexo.io/docs/) for more info. If you get any problems when using Hexo, you can find the answer in [troubleshooting](https://hexo.io/docs/troubleshooting.html) or you can ask me on [GitHub](https://github.com/hexojs/hexo/issues).

## Quick Start

### Create a new post

``` bash
$ hexo new "My New Post"
```
<!--more-->
More info: [Writing](https://hexo.io/docs/writing.html)

测试一下Python代码

``` python
#coding:utf-8
from selenium import webdriver
import time
browser = webdriver.Chrome() #浏览器
kch = "311084030"   #想要选择的课程号
kxh = "01"            #想要选择的课序号
  
def isElementExist(_browser, _string, _type):  
    flag=True  
    browser=_browser  
    try:  
        if _type == 'name':  
            browser.find_element_by_name(_string)  
        elif _type == 'xpath':  
            browser.find_element_by_xpath(_string)  
        elif _type == 'text':  
            browser.find_element_by_link_text(_string)  
        return flag  
    except:  
        flag=False  
        return flag
```

测试一下javascript代码。

``` javascript
/**
 * Sets up Justified Gallery.
 */
if (!!$.prototype.justifiedGallery) {
  var options = {
    rowHeight: 140,
    margins: 4,
    lastRow: 'justify'
  };
  $('.article-gallery').justifiedGallery(options);
}
```

测试一下C代码

``` c
void fill(int** result, int* nums, int dim, int x, int y) {
    // printf("\n\n------------  function fill ------------\n");
    // printf("dim: %d\n", dim);
    // printf("result[%d][%d]\n", x, y);
    int i;
    int j = 0;
    int* nums_copy = malloc(dim * sizeof(int));
    
    arraycopy(nums_copy, nums, dim);
    
    // printarray("nums", nums, dim);
    
    int offset = factorial(dim - 1);
    int total = offset * dim;
    if (dim == 1) {
        result[x][y] = nums[0];
        return;
    }
    for (i = 0; i < total; ++i) {
        result[x + i][y] = nums[i / offset];
        if (i < j * offset) {
            
        } else {
            arrayslice(nums, j, dim);
            // printf("fill(%d, %d)\t", x + i, y + 1);
            // printarray("nums", nums, dim - 1);
            fill(result, nums, dim - 1, x + i, y + 1);
            arraycopy(nums, nums_copy, dim);
            ++j;
        }
        
    }
    free(nums_copy);
}
```


More info: [Deployment](https://hexo.io/docs/deployment.html)


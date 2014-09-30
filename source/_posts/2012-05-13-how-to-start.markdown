---
layout: post
title: "How to start Octopress"
date: 2012-05-12 22:43:39 +0800
comments: true
categories: 其他
---

### how to begin

    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    mkdir ~/git
    git clone  git@github.com:yubo/yubo.github.io.git ~/git/yubo.github.io
    cd ~/git/yubo.github.io
    git checkout -b source origin/source
    rake setup_github_pages

### how to post

    rake generate	# build static web
    rake preview    # preview url  http://localhost:4000
    rake deploy		# deploy to yubo.github.io

### Don't forget to commit the source for your blog.

    cd ~/git/yubo.github.io
    git add .
    git commit -m 'your message'
    git push origin source

<!--more-->

### tips
---
##### 发布blog

    rake new_post["Zombie Ninjas Attack: A survivor's retrospective"]
---
##### 发布页面

    rake new_page[about]
    # creates /source/about/index.markdown

    rake new_page[about/page.html]
    # creates /source/about/page.html

```html 编辑 _includes/custom/navigation.html http://www.yubo.org www.yubo.org
<ul class="main-navigation">
  <li><a href="{{ root_url }}/">Blog</a></li>
  <li><a href="{{ root_url }}/blog/archives">Archives</a></li>
  <li><a href="{{ root_url }}/about">about</a></li>
</ul>
```

---
##### Excerpts

  When writing a post, you can add an HTML comment `<!--more-->` to split the post for an excerpt. Only the first section of the post, before the comment, will show up on the blog index.
---
##### image tag

    {% img http://placekitten.com/890/280 %}
    {% img left http://placekitten.com/320/250 Place Kitten #2 %}
    {% img right http://placekitten.com/300/500 150 250 Place Kitten #3 %}
    {% img right http://placekitten.com/300/500 150 250 'Place Kitten #4' 'An image of a very cute kitten' %}


{% img http://placekitten.com/890/280 %}
{% img left http://placekitten.com/320/250 Place Kitten #2 %}
“上帝制作了泥人，上帝烦了。所以上帝对一些泥人说，‘站起来。看我创造的一切。高山，大海，天空，星辰。’我就是那种坐起来环顾四周的泥人。幸福的我，幸福的泥人。我，一个泥人坐了起来，看见了上帝创造的奇迹。你太棒了，上帝！世界上只有您上帝才能做到这一切！我当然不能。和您相比，我感到自己十分渺小。一想到还有许多泥人未能做起来环顾四周，我便感到自己还有一点重要。我已经得到这么多，而大多数泥人却一无所获。谢谢您的垂顾！现在泥人又躺下睡了，泥人又多少值得回忆的事啊！我曾和多少有趣的坐起来的泥人见过面啊！我爱我看见过的一切。”

摘自 库尔特·冯内古特《猫的摇篮》（金峰 译）

{% img right http://placekitten.com/300/500 150 250 Place Kitten #3 %}

"God made mud. God got lonesome. So God said to some of the mud, 'Sit up.See all I've made,' Said God. 'The hills, the sea, the sky, the stars.' And I, with some of the mud, had got to sit up and look around. Lucky me, lucky mud. I, mud, sat up and saw what a nice job God {% img right http://placekitten.com/300/500 150 250 'Place Kitten #4' 'An image of a very cute kitten' %}had done. Nice going God! Nobody but you could have done it God! I certainly couldn't have. I feel very unimportant compared to You. The only way I can feel the least bit important is to think of all the mud that didn't even get to sit up and look around. I got so much, and most mud got so little. Thank you for the honor! Now mud lies down again and goes to sleep. What memories for mud to have! What interesting other kinds of sitting-up mud I met! I loved everything i saw."

from Kurt Vonnegut <Cat's Cradle>




---
##### code blocks


    ``` [language] [title] [url] [link text]
    code snippet
    ```

    ```c hello world http://www.yubo.org www.yubo.org
    #include <stdio.h>
    int main(int argc, char const *argv[])
    {
      printf("hello world!\n");
      return 0;
    }
    ```

```c hello world http://www.yubo.org www.yubo.org
#include <stdio.h>
int main(int argc, char const *argv[])
{
  printf("hello world!\n");
  return 0;
}
```
---
##### code

    { % include_code hello world lang:c c/hw.c %}
{% include_code hello world lang:c c/hw.c %}

---
##### gist tag

    { % gist ac29681554ad6fe016ae  gistfile1.diff %}
{% gist ac29681554ad6fe016ae  gistfile1.diff%}


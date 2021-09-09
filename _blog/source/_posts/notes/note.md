---
title: 杂笔记(Note)
date: 2016-10-29 
modified: 2021-04-21 14:19
category: [note, Something]
tags: 经验笔记
slug: 
---
#### Swift：

###### [Swift教程]
	>https://github.com/ipader/SwiftGuide;

###### Swift 开源项目精选:
	>https://github.com/ipader/SwiftGuide/blob/master/Featured.md

###### SwiftGuide:
	>https://github.com/ipader/SwiftGuide/blob/master/Featured-Articles.md
Swift，以上。

#### Pelican：

##### 高亮显示Markdown:
	void main()

	{
		printf("高亮？");      // 另起一行 首行缩进，书写即可

	}

#### 标题：
在编辑文字的时候，在前面加上“#”号，可以将之后一行文字作为标题大字体显示，编辑中瞎按，手误敲出来的字符，结果却很有用呢。或许其他字符也有作用，不过这已经满足日常编辑所需，不做过多探究了。充实内容，往往是首要的。

##### 利用Disqus添加评论系统：
在此网站注册一个帐号，在设置中找见shortname，应该为自己设置。   然后在Pelicanconf.py这个配置文件中添加

:::iidentifier

DISQUS_SITENAME = “yours shortname”

#### 贴图片：
在国内找了一个Z4A图床，感觉不错。 注册完毕，上传好图片应用链接自动生成，直接诶复制粘贴即可。HTML、BBCode、Markdown的，另外分为完整图片，中等图片，缩略图三种不同尺寸的链接。感觉良心。另外，点击图片后跳转图床，可以查看原图片文件，更是舒心赏心悦目～  免费使用，极力推荐。只不过图片不能加入缩进后的“代码栏”。

[![text.md.png](http://z4a.net/images/2016/07/19/text.md.png)](http://z4a.net/image/7o4n9)

数学公式： $ $e^{i\pi} + 1 = 0$ $ $之间无空格

$$e^{i\pi} + 1 = 0$$

失败……插入插件失败。之后有需要时再查找原因。
(不过这个图床已经废了。……默哀)
#### Linux 嵌入式C編程

Git 协助开发提交代码之类
参考流程（复制于 >https://github.com/numbbbbb/the-swift-programming-language-in-chinese）
有些朋友可能不太清楚如何帮忙翻译，我这里写一个简单的流程，大家可以参考一下：
首先```fork```我的项目
把```fork```过去的项目也就是你的项目```clone```到你的本地
在命令行运行```git branch develop```来创建一个新分支
运行```git checkout develop```来切换到新分支
运行```git remote add upstream https://github.com/numbbbbb/the-swift-programming-language-in-chinese.git 把我的库添加为远端库
运行```git remote update```更新
运行```git fetch upstream gh-pages```拉取我的库的更新到本地
运行```git rebase upstream/gh-pages```将我的更新合并到你的分支
这是一个初始化流程，只需要做一遍就行，之后请一直在develop分支进行修改。
如果修改过程中我的库有了更新，请重复6、7、8步。
修改之后，首先```push```到你的库，然后登录GitHub，在你的库的首页可以看到一个```pull request```按钮，点击它，填写一些说明信息，然后提交即可。
##### 关于```Pelican```这个文章写的完完全全了：
	>http://www.wengweitao.com/shi-yong-pelican-github-pagesda-jian-ge-ren-bo-ke.html
#### Vim
##### Vim中添加多行注释or删除：
使用```Ctrl+v```进入VISUAL BLOCK状态 然后上下移动光标选择行数，输入```I```，改为INSERT(paste)状态，键入内容按下Esc结束，即可。  删除则为选中之后直接按删除功能键如：d、c皆可，即可删除所选一列

## Blog

### Pelican 
Pelican Static Site Generator, Powered by Python：Pelican是python语言写的静态网站生成器。因为之前一直弄不好Jekyll 犯不着掉在这一颗树上，所以搜到了此同类软件。

网上的那些教程不知道为什么鲜有一次效仿成功的，都是各种问题。真心他们没有遇见过吗？因此我也不自己贴这个教程了，除非那一天弄懂了那些问题所在，否则不过张贴一些网上现有的示例而已，而且还是不能保证完全正确的示例，没有任何价值。

```
Date: 2016-06-18 Title:The 2st Blog Tags: 2st,pelicanのはじて初体験 Slug: test2
```
就像这样

接下来将本地的更到Gite: 2016-06-18tHub，至此就算告一段落。未能解决的问题还有很多，换言之其实就是问题们还没着手去解决。

例如，回车符怎么敲现在都不知道，一篇文章只能这么一条龙一直打下去。真是囧…。另外没法添加链接，旁边那个邮件的地址都还是别人的——这个主题的开发者。如果搞清这两处，估计就能不再去研究别的功能了，毕竟只是一个博客，能更看的过去就好。哈。

另外，将用到的命令在此备份 make html———— make serve————

output文件夹内： git init———— git add .———— git commit -m 'first commit' ———— git remote add origin git@github.com:IanVzs/IanVzs.github.io.git———— git push -u origin master

此外刚刚发现编辑时首行空格开始则将此段红色高亮显示 就像这样 就像这样并不会… 只不过在刚开始。 不过应该是汉字缩进，并且上一行没有内容，会有高亮显示。貌似是为了方便写程序？或许程序可以用这样的方式来插入，而不需要用那个专用的高亮语句:::*er什么的。

然而事实并不像以上那么顺利……上传依然错误频出 所以接下来是成功代码依次再排列 git init
```shell
git add -A
git remote remove origin
git remote add origin https://github.com/IanVzs/IanVzs.github.io.git
git add -A
git push --set-upstream origin master -f
git init
git add -A
git remote remove origin
git remote add origin https://github.com/IanVzs/IanVzs.github.io.git
git add -A
git push --set-upstream origin master -f
```
并且之前写在此处的更新文章也一直没法更新出来，所以将第二篇拆分了，分两个文件来上传，否则只看那个成功update 实在有不信任感觉，现在如果这篇文章还是无法更新，那真的是…… 如果能的话，看来一篇文章还有字数限制？ 应该没 按理，更新后的文件也不是一个文件了，我也换了文件名都不能更新其内容是在令人不解。

现在呢，就感觉顺手多了，只需要 git init git add . git git commit -m “hia” git push --set-upstream -f 即可。

现在，创建完新的 之后，官网有了详细的说明：	
```shell
echo "# ianvzs.github.io" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/IanVzs/ianvzs.github.io.git
git push -u origin master
```
简单明了。


### hexo
而之后因为其主题我选的不好，然后又觊觎`nodejs`，所以将`blog`使用`hexo`来写了。以下是使用教程了——
title: Hello World

---
Welcome to [Hexo](https://hexo.io/)! This is your very first post. Check [documentation](https://hexo.io/docs/) for more info. If you get any problems when using Hexo, you can find the answer in [troubleshooting](https://hexo.io/docs/troubleshooting.html) or you can ask me on [GitHub](https://github.com/hexojs/hexo/issues).

### Quick Start

#### Create a new post

``` bash
$ hexo new "My New Post"
```

More info: [Writing](https://hexo.io/docs/writing.html)

#### Run server

``` bash
$ hexo server
```

More info: [Server](https://hexo.io/docs/server.html)

#### Generate static files

``` bash
$ hexo generate
```

More info: [Generating](https://hexo.io/docs/generating.html)

#### Deploy to remote sites

``` bash
$ hexo deploy
```

More info: [Deployment](https://hexo.io/docs/deployment.html)

#### 修改配置
blog根目录下`_config.yml`, 以及themes下`_config.yml`
##### 连接github:
```yml
deploy:
    type: git
    repo: https://github.com/*******/**.git
    branch: master
```
```bash
npm install hexo-deploy-git --save
```

### themes
- hueman主题的图片配置地址为: `/themes/hueman/source/css/images`
- 可在`themes/hueman/_config.yml`中进行修改各项图片配置

## Git
### git 版本切换
将项目克隆之后，可通过
```shell
$ git tag   // 查看tag
> v1
> v2
> v3
$ git show v1       //根据tag 查看版本号
> tag v1
> Tagger: user
> Data: Fri May 23 17:47:00 2018 +0800
>  '为了部落'
> commit 5b123b31h4bvb31
> Aurhor user
> 等
$ git reset --hard 5b123b31h4bvb31  // 根据版本号回退版本
```
## 部署到服务器
在部署到服务器的时候，发现有`‘node’: No such file or directory`的错误，解决办法是创建软连接：
```shell
ln -s /usr/bin/nodejs /usr/bin/node
```
[^_^]:
    2018年6月11日16点42分

另外，直接拷过去的`blog`项目没法用`hexo`直接运行…
解决办法是：
```shell 
// 并没有解决啊！！！！
```
[^_^]:
    2018年6月12日13点55分

(⊙﹏⊙)，╮(╯-╰)╭其实是`npm`在服务器`apt`安装的版本太低了… 在官网下了最新版，然后再次通过新版`npm`安装`hexo`就可以直接用了。

## 2021-04-21
emmmmm如今重新再次翻看，觉得o(∩∩)o...哈哈。
这次找了个不错的模板，比之前用的没有分页强多了，而且还有了搜索功能。简直完美符合平时查阅的需求。
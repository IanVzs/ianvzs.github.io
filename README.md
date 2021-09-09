# ianvzs.github.io
个人博客

## 记录方式
### 初始：
之前是用网上方式 用`markdown`写好, 然后用小工具转化为静态`html`网页
### 后来：
现在觉得这个太费劲了，而且框架生成的也不大喜欢，使用效率不高。 所以现在在用提`issue`和解决一问一答的形式来记录。

### 现在:
`github`打开太慢了, `issue`打开更慢，所以还是使用`blog`吧...

### 分级
保留note, tip
- note: 比较详尽的笔记
- tip: 一些好用但不会涉及原理一类,浅层的记录

有learning, deep
- learning: 学习时记录
- deep: 在使用一段时间后的系统总结

根据现在使用的模板,感觉二级`category`还是应该使用具体事情,不然在使用时容易一头雾水.
然后在`tag`中标明是`learning`, `deep`之类的比较好.

## 使用
现在用的主题需要的步骤:
```bash
git clone https://github.com/ppoffice/hexo-theme-hueman.git themes/hueman
npm install -S hexo-generator-json-content
npm install hexo-deployer-git --save
```

### 新建文章
直接新建文件夹没办办法---不对，应该非`/source/_posts`下创建的文件夹会出错.
但用此命令可直接创建，省去了自己新建文件夹以及文件再`cp`模板的步骤.
```bash
hexo new post -p notes/note.md
```

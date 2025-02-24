2025-2-22

可以通过 `git commit -am` 命令提交所有文件的修改，但是如果有新文件，需要先 git add 新文件名，再 `git commit -am` 提交所有文件的修改。

            
2025-2-23
## 恢复已修改文件的方法

情况一：如果没有add即是**红色的的M**的话： `git restoe <file>` 可以将修改的文件恢复到最近一次提交的状态

情况二：如果已经add了即是**绿色的M**的话:可以 `git restore --staged <file>` 取消暂存。再利用`git restore <file>` 恢复文件

2025-2-23
## 关于 git pull
来源于[技术爬爬虾](https://www.bilibili.com/video/BV1McyYYtEX4/?spm_id_from=333.337.search-card.all.click&vd_source=7184f70b126b0d6d3ad6ad4235c0c45c)
```bash
git pull = git fetch + git merge
```
git pull 是 git fetch 和 git merge 的缩写。git fetch 用于从远程仓库获取最新的代码，而 git merge 则用于将获取到的代码合并到本地分支。但是如果多人共同开发一个分支时，可能会出现冲突。

比如同事A修改了文件A，同事B也修改了文件A，但是同事A先一步提交了，同事B后一步提交，那同事B就会被拒绝提交，因为git merge 会将本地分支和远程分支进行合并，如果有冲突，就会拒绝合并。

所以如果多人共同开发一个分支时，最好使用 `git pull --rebase`命令，这样有冲突的话，会把你本地的提交放一边，先把远程分支的提交拉下来，然后再把你的提交放回去，这样不仅解决了冲突还保持了分支的线性。

## 关于变基（rebase）



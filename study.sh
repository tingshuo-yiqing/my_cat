在当前提交上创建新更改的流程
1. 创建并切换到新分支
首先，从当前的分离头指针状态创建一个新分支：

注意：将 feature_branch 替换为有意义的分支名称

2. 确认分支创建成功
当前分支应该显示为 * feature_branch

3. 修改文件
现在可以安全地修改 my_cat.txt：

4. 查看修改状态
5. 暂存修改
6. 提交更改
7. 合并回主分支（可选）
提示
使用有意义的分支名称和提交信息
定期推送到远程仓库 (git push)
如果不需要这些更改，可以随时删除分支：
git switch main
git branch -d feature_branch
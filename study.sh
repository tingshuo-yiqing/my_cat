2025-2-22
可以通过 git commit -am 命令提交所有文件的修改，但是如果有新文件，需要先 git add 新文件名，再 git commit -am 提交所有文件的修改。

            
2025-2-23
恢复文件的方法

如果没有add即是红色的的M的话： git restoe <file> 可以将修改的文件恢复到最近一次提交的状态

如果已经add了即是绿色的M的话:可以 git restore --staged <file> 取消暂存。再利用git restore <file> 恢复文件


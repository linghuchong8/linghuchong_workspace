#Git��װ
#Git������
https://git-scm.com/

#��ʼ���汾��
#����Ŀ�ļ����ڣ�ִ�� 
git init

 #����ǩ��
#1�������н���������ҵ���䣬ѧϰ�н������õ�����ΪgitHub����gitee��ע������
#2�����õ�ǰ��Ŀ�������ǩ��user.name ��user.email 
git config user.name "linghuchong8"
git config user.email "linghuchong@111.com"
#3������ȫ��������ǩ��
git config --global user.name "linghuchong8"
git config --global user.email "linghuchong@111.com"
#��ǩ�����õĴ洢λ��
#��ǰ��Ŀ������ǩ�����õĴ洢�ļ�: ��ǰ��Ŀ\.gitĿ¼�µ�config�ļ�.
#ȫ��������ǩ�����õĴ洢�ļ�: C:\Users\��ǰϵͳ�û���\Ŀ¼�µ�.gitconfig�ļ�

#�ύ�ļ�
1���½��ļ���ͨ�� git  status  ���в鿴�ļ�״̬
�ļ�����ʾ��ɫ��ʾ��δ����汾����
mkdir src
cd src
vim Test.java
cd ..
git status

#2�����ļ���ӵ��ݴ���:   git  add  �ļ��� ����  git add �ļ�
git add src
git add Test.java
git add *
#3���ٴ�git status �鿴�ļ�״̬
�ļ�����ʾ��ɫ��ʾ�ļ������ݴ���
git status
#4���ύ�ݴ����ļ������ؿ�
 git commit ,�Զ����뵽vim�У���дע�� ,����ύ����Ҳ���� git commit -m "ע������", ֱ�Ӵ�ע���ύ
git commit
git commit -m "����"
#����error: pathspec '�Cm' did not match any file(s) known to git
#error: pathspec '����' did not match any file(s) known to git
 ��git commit -m "initial commit" #�ͺ�,������Ӣ�ģ��м�-
 git commit -m "����"

�ύ��ɺ��ٲ鿴״̬
git status

3.4  �鿴�ļ��ύ��¼
1��ִ��  git log �ļ���  �鿴��ʷ��¼
git log 
2��ͨ�� git log --pretty=oneline �ļ��� ������Ϣ�鿴
git log --pretty=oneline

3.5  ������ʷ
1��git  reset --hard  HEAD^   ���˵���һ���ύ. ^��ʾ����һ��
git  reset --hard  HEAD^
2��git reset --hard HEAD~n  ����n�β���
git reset --hard HEAD~1
git reset --hard HEAD~2

3.6  �汾��Խ
1�����в鿴��ʷ��¼�İ汾�ţ�ִ�� git  reflog  �ļ���
git  reflog
�����
88b8da4 (HEAD -> master) HEAD@{0}: reset: moving to HEAD^
1823d8a HEAD@{1}: commit: ����
88b8da4 (HEAD -> master) HEAD@{2}: commit (initial): initial commit

2��ִ�� git  reset  --hard  �汾��
git  reset  --hard 1823d8a
�����
HEAD is now at 1823d8a ����

3.7  ��ԭ�ļ�
1��git  checkout  -- �ļ��� 
����ļ��޸ģ���δ����git add������£�����ͨ����ԭ�ص��޸�֮ǰ��״̬. ����Ѿ��ύ�ˣ�ֻ��ʹ��git reset�������. 
58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ cat src/Test.java
�����
1111111111111111
2222222222222222
3333333333333333

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ vim src/Test.java

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ cat src/Test.java
�����
A111111111HGG1111111
2H22222GHG2222222222
333JGHG3333333333333

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git checkout -- src/Test.java

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ cat src/Test.java
�����
test

3.8  ɾ���ļ�
1�����������һЩ�ļ������ύ���Ƚ������ļ�ɾ������ִ��git add �ύ.
 58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ touch src/girlfriend.jpg

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git add src

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git commit -m "new file"
�����
[master c971aa4] new file
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 src/girlfriend.jpg

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ rm -rf src/girlfriend.jpg

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git status
�����
On branch master
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        deleted:    src/girlfriend.jpg

no changes added to commit (use "git add" and/or "git commit -a")

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git add src/girlfriend.jpg

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git commit -m "fix bug"
�����
[master b376057] fix bug
 1 file changed, 0 insertions(+), 0 deletions(-)
 delete mode 100644 src/girlfriend.jpg
2��ʵ���ϣ�ֻҪ�ύ����ļ�����git�ж��м�¼��ÿ���û�����ͨ��git reflog�鿴����Ӧ�İ汾�ţ��������ٻ��˵���Ӧ�İ汾.


��֧ʵս
1���鿴��֧
git branch �Cv  

2��������֧
git branch <��֧��>

3���л���֧
git checkout  <��֧��>
һ����ɣ� git checkout  �Cb  <��֧��>  ������֧���л����÷�֧




4���ϲ���֧
���л�������(Ҫ�ϲ����ķ�֧)   git  checkout  master
�ٺϲ���֧ git  merge  <��֧��>

5��ɾ����֧
���л�������   git  checkout  master
git  branch -D  <��֧��>
�����
58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git branch dev

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git branch -v
�����
  dev    b376057 fix bug
* master b376057 fix bug
  �Cv     b376057 fix bug

  58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git checkout dev
Switched to branch 'dev'

58498@hadoop MINGW64 /d/bigdata-workspace (dev)
$ touch src/Hello.java

58498@hadoop MINGW64 /d/bigdata-workspace (dev)
$ git add src/Hello.java

58498@hadoop MINGW64 /d/bigdata-workspace (dev)
$ git commit -m "add Hello.java"
�����
[dev 93c26c3] add Hello.java
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 src/Hello.java

58498@hadoop MINGW64 /d/bigdata-workspace (dev)
$ git branch -v
�����
* dev    93c26c3 add Hello.java
  master b376057 fix bug
  �Cv     b376057 fix bug

58498@hadoop MINGW64 /d/bigdata-workspace (dev)
$ ll src
�����
total 1
-rw-r--r-- 1 58498 197609 0 Aug  8 23:09 Hello.java
-rw-r--r-- 1 58498 197609 6 Aug  8 22:04 Test.java
-rw-r--r-- 1 58498 197609 0 Aug  8 21:57 test.txt
��֧��������֧������
58498@hadoop MINGW64 /d/bigdata-workspace (dev)
$ git checkout master
�����
Switched to branch 'master'

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ ll src
�����
total 1
-rw-r--r-- 1 58498 197609 6 Aug  8 22:04 Test.java
-rw-r--r-- 1 58498 197609 0 Aug  8 21:57 test.txt
4���ϲ���֧
���л�������(Ҫ�ϲ����ķ�֧)   git  checkout  master
�ٺϲ���֧ git  merge  <��֧��>

58498@hadoop MINGW64 /d/bigdata-workspace (dev)
$ git checkout master
Switched to branch 'master'

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git merge dev
Updating b376057..93c26c3
Fast-forward
 src/Hello.java | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 src/Hello.java

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git branch -v
  �����
  dev    93c26c3 add Hello.java
* master 93c26c3 add Hello.java
  �Cv     b376057 fix bug
5��ɾ����֧
���л�������   git  checkout  master
git  branch -D  <��֧��>
58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git branch -D dev
Deleted branch dev (was 93c26c3).

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git branch -v
�����
* master 93c26c3 add Hello.java
  �Cv     b376057 fix bug
3.11 ��֧��ͻ
1�����������֧ͬʱ�޸�һ���ļ����ٽ��кϲ���֧ʱ���ͻ���ֳ�ͻMERGING.
58498@hadoop MINGW64 /d/bigdata-workspace (dev)
$ vim src/Hello.java

58498@hadoop MINGW64 /d/bigdata-workspace (dev)
$ git add src/Hello.java
warning: LF will be replaced by CRLF in src/Hello.java.
The file will have its original line endings in your working directory

58498@hadoop MINGW64 /d/bigdata-workspace (dev)
$ git commit -m "add 1"
[dev 982ba1a] add 1
 1 file changed, 1 insertion(+)
####################################################################
58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ vim src/Hello.java

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git add src/Hello.java
warning: LF will be replaced by CRLF in src/Hello.java.
The file will have its original line endings in your working directory

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git commit -m "add2"
[master 9d8c6ac] add2
 1 file changed, 2 insertions(+)

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git branch -v
  dev    982ba1a add 1
* master 9d8c6ac add2
  �Cv     b376057 fix bug

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git merge dev
Auto-merging src/Hello.java
CONFLICT (content): Merge conflict in src/Hello.java
Automatic merge failed; fix conflicts and then commit the result.


2����λ��ͻ
ͨ��git diff ��λ��ͻ
58498@hadoop MINGW64 /d/bigdata-workspace (master|MERGING)
$ git diff
diff --cc src/Hello.java
index 51bbc1b,d31ba6f..0000000
--- a/src/Hello.java
+++ b/src/Hello.java
@@@ -1,2 -1,1 +1,6 @@@
++<<<<<<< HEAD
 +
 +asjdqas
++=======
+ qwqwqw
++>>>>>>> dev


3�������ͻ
���뵽��ͻ���ļ����������ݵ��޸�.Ȼ������git add  �� git commit
58498@hadoop MINGW64 /d/bigdata-workspace (master|MERGING)
$ vim src/Hello.java

58498@hadoop MINGW64 /d/bigdata-workspace (master|MERGING)
$ git add src/Hello.java

58498@hadoop MINGW64 /d/bigdata-workspace (master|MERGING)
$ git commit -m "fix merge"
[master 4e731c7] fix merge

58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git branch -v
  dev    982ba1a add 1
* master 4e731c7 fix merge
  �Cv     b376057 fix bug
  
�˺�ע��
1��GitHub��ַ
https://github.com/
2��Gitee��ַ
https://gitee.com/

��git�д���project
1�������ֿ�
https://github.com/linghuchong8?tab=repositories   
���̵�ַ��https://github.com/linghuchong8/linghuchong_workspace.git
����Զ�̵�ַ
1��git remote add  <Զ�˴���>   <Զ�˵�ַ> ��
<Զ�˴���> ��ָԶ�����ӵĴ��ţ�һ��ֱ����origin�����ţ�Ҳ�����Զ��塣
 <Զ�˵�ַ> Ĭ��Զ�����ӵ�url
git remote add origin https://github.com/linghuchong8/linghuchong_workspace.git
���͵�Զ�˿�
1��git  push   <Զ�˴���>    <���ط�֧����>��
<Զ�˴���> ��ָԶ�����ӵĴ��š�
<��֧����>  ��ָҪ�ύ�ķ�֧���֣�����master��
���� git  push  origin  master
2�������û���

3����������

4�����ͳɹ�����ʾ
58498@hadoop MINGW64 /d/bigdata-workspace (master)
$ git  push  origin  master
�����
Enumerating objects: 27, done.
Counting objects: 100% (27/27), done.
Delta compression using up to 12 threads
Compressing objects: 100% (14/14), done.
Writing objects: 100% (27/27), 1.98 KiB | 676.00 KiB/s, done.
Total 27 (delta 3), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (3/3), done.
To https://github.com/linghuchong8/linghuchong_workspace.git
 * [new branch]      master -> master


5����Gitee�в鿴
code

��Gitee�п�¡��Ŀ������
git  clone   <Զ�˵�ַ>   <����ĿĿ¼��>��
<Զ�˵�ַ> ��ָԶ�����ӵĵ�ַ��
<��ĿĿ¼��>  ��ָΪ��¡����Ŀ�ڱ����½���Ŀ¼���ƣ����Բ��Ĭ����Gitee����Ŀ����
����ִ����󣬻��Զ�Ϊ���Զ�˵�ַ��һ����Ϊorigin�Ĵ��š�
58498@hadoop MINGW64 /d/bigdata-workspace (master)
$  git clone git@github.com:linghuchong8/linghuchong_workspace.git
�����
Cloning into 'linghuchong_workspace'...
remote: Enumerating objects: 27, done.
remote: Counting objects: 100% (27/27), done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 27 (delta 3), reused 27 (delta 3), pack-reused 0
Receiving objects: 100% (27/27), done.
Resolving deltas: 100% (3/3), done.

���µĸ����ύ��Gitee[�����]
1��ʧ��: ����Gitee��˵�����������û��������ݣ����뽫����û���ӵ����������

4.3.7 ��Gitee�и�����Ŀ�����ؿ⡾����Ⱥ��
1��git  pull   <Զ�˴���>   <Զ�˷�֧��>��
 <Զ�˴���> ��ָԶ�����ӵĴ��š�
 <Զ�˷�֧��>��ָԶ�˵ķ�֧���ƣ���master�� 
 �� git pull origin master
 
 git push origin master
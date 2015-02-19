# This is my vim config file

## 效果图

![Linux GUI][1]

## 插件

- `nerdtree`: 树形目录浏览
- `nerdcommenter`: 快速注释/取消注释
- `tagbar`: 标签浏览
- `vim-over`: 可视化替换
- `ctrp.vim`: 快速打开文件
- `supertab`: 一键 Tab
- `syntastic`: 语法检查
- `gtags.vim`: GNU Global 支持
- `YouCompleteMe`: 补全
- `vim-fugitive`: Git 支持

以及若干语言相关的插件, 都在 `vimrc.bundles` 文件里

## 外观

### 插件

使用 `vim-airline`, `indentLine` 由于在遇到特别长的行 (比如 HTML 等文件) 时会异常卡顿, 所以已经不用了.

### 字体

我在虚拟终端下, Vim, Emacs 中都是使用 Source Code Pro for Powerline 字体的.

#### 虚拟终端

我使用 `xfce4-terminal`, 使用的字体为 `Source Code Pro for Powerline Medium`, 字体大小为 10 号.

#### Linux 下 GVim

字体为 `Source Code Pro for Powerline Medium`, 大小为 10 号

配置为

```vim
set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 10
```

#### Windows 下 GVim

配置为

```vim
set guifont=Sauce_Code_Powerline:h10:cANSI
```

不知道为什么叫 Sauce Code Powerline ...

Windows 下 Source Code Pro 字体比较虚, 建议配合 MacType 使用.

##### 不使用 MacType

![Gvim on Windows GUI without MacType][2]

##### 使用 MacType

![Gvim on Windows GUI with MacType][3]

### 主题

```vim
Plugin 'jordwalke/flatlandia'
```

对这个主题做了简单的 Monkey Patching

```vim
" original 239
hi LineNr ctermfg=242
```

及使用 `git diff --patch` 生成的文件 `flatlandia.patch`

```diff
diff --git a/autoload/airline/themes/flatlandia.vim b/autoload/airline/themes/flatlandia.vim
index f63ff15..d452af6 100644
--- a/autoload/airline/themes/flatlandia.vim
+++ b/autoload/airline/themes/flatlandia.vim
@@ -71,10 +71,10 @@ let g:airline#themes#flatlandia#palette.replace_modified = {
     \ 'airline_c': [ s:R3[0] , s:I3[1] , s:R3[2] , s:R3[3] , ''     ] }
 
 
-let g:airline#themes#flatlandia#palette.insert_paste = {
-    \ 'airline_a': [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , ''     ] ,
-    \ 'airline_b': [ s:PA[0] , s:IM[0] , s:PA[1] , s:IM[1] , ''     ] ,
-    \ 'airline_c': [ s:PA[0] , s:N3[1] , s:PA[1] , s:N3[3] , ''     ] }
+" let g:airline#themes#flatlandia#palette.insert_paste = {
+    " \ 'airline_a': [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , ''     ] ,
+    " \ 'airline_b': [ s:PA[0] , s:IM[0] , s:PA[1] , s:IM[1] , ''     ] ,
+    " \ 'airline_c': [ s:PA[0] , s:N3[1] , s:PA[1] , s:N3[3] , ''     ] }
 
 
 let g:airline#themes#flatlandia#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
```

要应用这个 `patch`, 可以 `cd bundle/flatlandia`, 然后

```bash
git apply ../../flatlandia.patch
```

或者直接使用 `patch`

```bash
patch -p1 -i ../../flatlandia.patch
```

[1]: screenshot/linux_gui.png
[2]: screenshot/windows_gui_without_mactype.png
[3]: screenshot/windows_gui_with_mactype.png

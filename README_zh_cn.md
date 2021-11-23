<p align="center"><img src="https://raw.githubusercontent.com/tony709394/Armour/main/Images/logo.png" align="center" width="175"></p>

<h1 align="center">Armour</h1>

Language: [English](README.md) | 中文简体

## Armour 是什么 ?

Godot 描边效果工具。让你的模型穿上铠甲。

## 特性

- 无需编写着色器，使用简单
- 自定义层级，防止冲突
- 描边参数可调节

## 安装

> 支持 Godot 3.0+。不支持 GLES2

- 下载这个仓库

- 复制 Armour 目录 至 你的项目目录

- 在 Godot 编辑器中，选择 "项目 -> 项目管理 -> 自动加载"

- 添加脚本 Armour.gd

<p align="center"><img src="https://raw.githubusercontent.com/tony709394/Armour/main/Images/autoload.png" align="center"></p>

>  **注意:** 假如 OpenGL 版本为 GLES2，Armour 无法正常运行 。
> 
> <img src="https://raw.githubusercontent.com/tony709394/Armour/main/Images/error.png" align="center">

## 示例

```
Armour.INIT({
    "layer": 10,
    "camera": camera,
})
Armour.SET(mesh, true)
Armour.SET(mesh, false)
```

## API

### INIT

- 描述: 初始化工具，而且必须在 SET 方法前 调用。

- 输出: `Boolean`

- 输入: `Dictionary`

- 用法:

```
var res_bool = Armour.INIT({
    "layer": 10,
    "camera": camera,
    "outline_width": 5,
    "outline_color": Color(1.0, 0.0, 0.0, 0.3),
})
print(res_bool)
```

### SET

- 描述: 控制网格描边的可见性。

- 输出: `Boolean`

- 输入: `Mesh, Boolean`

- 用法:

```
# or Armour.SET(mesh)
var res_bool = Armour.SET(mesh, true)
print(res_bool)

var res_bool = Armour.SET(mesh, false)
print(res_bool)
```
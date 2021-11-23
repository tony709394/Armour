<p align="center"><img src="https://raw.githubusercontent.com/tony709394/Armour/main/Images/logo.png" align="center" width="175"></p>

<h1 align="center">Armour</h1>

Language: English | [中文简体](README_zh_cn.md)

## What is Armour ?

A outline effect tool for Godot. Putting your models in armor.

## Features

- No need to write shader, easy to use
- Customized layer to prevent conflicts
- Outline parameters are adjustable

## Install

> Godot 3.0+ is supported. GLES2 is not supported.

- Download this repository

- Copy the directory named Armour into your project

- In the Godot editor, select "Project -> Project Settings -> AutoLoad"

- Add a script named Armour.gd

<p align="center"><img src="https://raw.githubusercontent.com/tony709394/Armour/main/Images/autoload.png" align="center"></p>

>  **Note:** Armour does not work properly if GLES2 is used.
> 
> <img src="https://raw.githubusercontent.com/tony709394/Armour/main/Images/error.png" align="center">

## Examples

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

- Description: Initialize the tool and must be called before the SET method.

- Output: `Boolean`

- Input: `Dictionary`

- Usage:

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

- Description: Control the visibility of the mesh outline.

- Output: `Boolean`

- Input: `Mesh, Boolean`

- Usage:

```
# or Armour.SET(mesh)
var res_bool = Armour.SET(mesh, true)
print(res_bool)

var res_bool = Armour.SET(mesh, false)
print(res_bool)
```
# TiltBrushDisplay
Ways to display Tilt Brush sketches outside of the HTC Vive

##Exporting from Tilt Brush
Google has some [documentation](https://support.google.com/tiltbrush/answer/6389651?hl=en&ref_topic=7074683) and some more indepth [release notes] on how to export files from Tilt Brush. The file types are:
 * Video's
 * GIF's
 * 2D pictures
 * `.fbx` files
 * `.obj` files
 * Tilt Brush's own JSON format file

Google's documentation doesn't say anything about the amount of information stored in these files. But I found that there is no `.mtl` campanion file with the `.obj` file. However, when exporting it does also export textures in the form of `.png` files for every brush (that has texture) used.

##Importing elsewhere
Video's, GIF's and pictures are fairly easy to display in a lot of environments. However, they don't capture te full experience of Tilt Brush art, because you can't interact with them in 3D. So I will try to give a better representation in the following ways.

###Importing in Sketchfab
[Sketchfab](http://sketchfab.com) is a website for sharing 3D models. It has a great viewer for exploring 3D models and embed code to display models on other websites. There are two options for uploading:

 * Just the `.fbx` file
 * The `.fbx` file together with all the `.png` textures in a zip folder
The latter will ofcourse render your model with textures.

###Importing in Processing
Importing an `.obj` file is fairly simple, but it doesn't have a texture. According to the [OBJ Wikipedia page](https://en.wikipedia.org/wiki/Wavefront_.obj_file) it stores [UV mapping information](https://en.wikipedia.org/wiki/UV_mapping), so it should be able to get a texture when we add one. However, there's a problem in Processing; you can't apply textures to loaded shapes. [Forum thread about the problem](https://forum.processing.org/one/topic/changing-materials-on-imported-obj-pshapes.html) that might be useful.

There's also the option of using the shaders Google provides in their [release notes].

However, I don't think figuring more out for Processing will be usefull, as I imagine using Unity or 3D modeling software like Blender will be more practicle for most cases.

###Importing in Blender
Blender will take either the `.obj` or the `.fbx` file. But the `.fbx` file has to be converted to binary FBX (Google's python script create ASCII FBX). Luckily there is some free [Autodesk software](http://usa.autodesk.com/adsk/servlet/pc/item?siteID=123112&id=22694909) for doing just that. I haven't tried adding textures yet.

###Importing in Unity
As mentioned in the [release notes], you can import the `.fbx` file in Unity. Adding the shader and the textures created on export is also possible. Appearently a good way to do it is to first import the files in Houdini, see [this tutorial](https://youtu.be/FZ8vAbPmViU).



[release notes]: https://docs.google.com/document/d/11ZsHozYn9FnWG7y3s3WAyKIACfbfwb4PbaS8cZ_xjvo/edit#

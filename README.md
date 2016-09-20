# TiltBrushDisplay
Ways to display Tilt Brush sketches outside of the HTC Vive

##Exporting from Tilt Brush
Google has some [documentation](https://support.google.com/tiltbrush/answer/6389651?hl=en&ref_topic=7074683) on how to export files from Tilt Brush. The file types are:
 * Video's
 * GIF's
 * 2D pictures
 * `.fbx` files
 * `.obj` files
 * Tilt Brush's own JSON format file

Google's documentation doesn't say anything about the amount of information stored in these files. So I'll have to test and see if there is an `.mtl` campanion file with the `.obj` file, or if there is a different way to preserve material.

##Importing elsewhere
Video's, GIF's and pictures are fairly easy to display in a lot of environments. However, they don't capture te full experience of Tilt Brush art, because you can't see them in 3D. To try and come a little closer, I'm going to try to import the art in Processing and then try making an AR app (possibly with stereoscopic view). 

###Importing in Processing
Importing an `.obj` file is fairly simple, but it might not contain any material information. If that is the case, I could try to generate a texture from the JSON file or look at the `.fbx` format.

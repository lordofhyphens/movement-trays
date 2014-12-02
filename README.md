How to Use:

Create a new SCAD file in the same directory as tray1.scad 

Add the following line:

`use<tray1.scad>`

Now add another line under that one, to call `circle\_tray()`.
  * The first argument is the number of bases to fit in the width.
  * Second argument is the number of rows of bases. 
  * Third argument is a vector, containing the length and width of the bases. This in mm.
  * Fourth argument is the height of the tray in mm. It defaults to 3.5mm, but 4.0 works well too. 
  * Finally, the last argument is either true or false. If it's set to false, it will make old-style Fantasy bases. if it's True, it will make a square movement tray with room to place round bases.


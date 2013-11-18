newImage("Untitled", "8-bit black", 512, 512, 32);
for (n = 1; n <= nSlices(); n++){
run("Specify...", "width=256 height=128 x="+120 + 8 * n+" y="+120 + 8 * n+" slice="+n+" centered");
run("Rotate...", "angle="+((n-1)*180 / nSlices()));
colour = 255-(n-1)*256/nSlices();
setColor(colour);
print(colour);

fill();
}
resetMinAndMax();

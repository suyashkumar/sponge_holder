/* 
sponge_holder.scad
A simple sponge holder that sits in the divider between dual sinks.
@author: Suyash Kumar (suyashkumar) 
*/

module sponge_holder(
    width=220, 
    length=150, 
    height=200, 
    sink_cutout_length=70, 
    sponge_width=50,
    sponge_x_offset=70,
    sponge_y_offset=20) {
    difference() {
        cube([width, length, height], center=true);
        translate([0,-sponge_y_offset,0])
            cube([sink_cutout_length, length-sponge_y_offset, height], center=true);
        translate([-sponge_x_offset, sponge_y_offset, 0])
            cube([sponge_width, length-sponge_y_offset, height], center=true);
        translate([sponge_x_offset, sponge_y_offset, 0])
            cube([sponge_width, length-sponge_y_offset, height], center=true);
        //TODO: add water drainage holes
    }
}

sponge_holder();
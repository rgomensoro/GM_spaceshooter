/// @description Insert description here
// You can write your code in this editor


factor = 0.05;
if (aumentando)
{
 image_xscale = image_xscale + factor;
 
 if (image_xscale > 1.5)
	aumentando = false
}
else
{
 image_xscale = image_xscale - factor;
 
 if (image_xscale <= 0.05)
	aumentando = true;
	
}
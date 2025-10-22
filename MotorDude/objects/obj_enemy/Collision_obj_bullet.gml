instance_destroy(other);
effect_create_above(ef_explosion,x ,y ,1 ,c_red);

if instance_number(obj_enemy) < 5{
	x = 420;
}
else{
	instance_destroy();	
}
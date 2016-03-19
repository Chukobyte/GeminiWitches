///cap_max_spd(spd_var, max_spd)
var spd_var = argument0;
var max_spd = argument1;

if(abs(spd_var) > max_spd) {
        spd_var = max_spd * sign(spd_var);
}

return spd_var;

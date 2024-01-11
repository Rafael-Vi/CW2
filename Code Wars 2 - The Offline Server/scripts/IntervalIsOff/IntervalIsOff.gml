// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function IntervalIsOff(argument0, argument1){
	var _value = argument0;
	var _interval = argument1;

	return (_value % _interval) <= _interval/2;

}
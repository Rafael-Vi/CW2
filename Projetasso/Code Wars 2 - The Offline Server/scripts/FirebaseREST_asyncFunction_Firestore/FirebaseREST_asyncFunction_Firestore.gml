function FirebaseREST_asyncFunction_Firestore(event,o_,url,method_,header_json,body)
{
	var ins = instance_create_depth(0,0,0,o_);
	ins.event = event
	ins.url = url
	ins.method_ = method_
	ins.header_json = header_json
	ins.body = body
	//ins.from = id
	
	ins.alarm[0] = 1
    
	return(ins)
}

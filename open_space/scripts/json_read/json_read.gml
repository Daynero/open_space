///@param file_name fali_name in included

var file = file_text_open_read(argument[0])
var js="";
while(!file_text_eof(file)) 
    js+=file_text_readln(file);
file_text_close(file);

return js
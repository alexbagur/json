function var1 = jsonread(jsonfilename)
%JSONREAD loads and reads json file into a matlab structure

% Decoding json file
fid = fopen(jsonfilename); 
raw = fread(fid,inf); 
str = char(raw'); 
fclose(fid); 
var1 = jsondecode(str);

end


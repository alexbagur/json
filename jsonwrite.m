function jsonwrite(var1, output_json_filepath)
%WRITEJSON(var1, output_json_filepath) Takes var1 to encode and stores json
%file in output_json_filepath

disp('Writing JSON file...')
jsonStr = jsonencode(var1);
fid = fopen(output_json_filepath, 'w');
if fid == -1, error('Cannot create JSON file'); end
fwrite(fid, jsonStr, 'char');
fclose(fid);
disp('Done writing JSON file')

end


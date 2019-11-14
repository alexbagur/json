function jsonwrite(var1, output_json_filepath)
%WRITEJSON(var1, output_json_filepath) Takes var1 to encode and stores json
%file in output_json_filepath

if ~endsWith(output_json_filepath,'.json')
    output_json_filepath = [output_json_filepath '.json'];
end

disp(['Writing JSON file ' output_json_filepath])
jsonStr = jsonencode(var1);
fid = fopen(output_json_filepath, 'w');
if fid == -1, error('Cannot create JSON file'); end
fwrite(fid, jsonStr, 'char');
fclose(fid);
disp('Done writing JSON file')

end


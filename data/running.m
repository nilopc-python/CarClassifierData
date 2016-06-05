parts = {'headlight', 'front_view',  'side_glass', 'backlight','back_view'};
root_path = 'Images';

images = dir(root_path);
offset = 270;  % yongeun -> 0, sanha -> 337 , soochan -> 674
             % �ϴٰ� �߰��� �׸������� ��ȣ ���� offset �߰�...

for imgIdx=3+offset:int16(size(images, 1)/16)
    bbox = bounding_box(fullfile(root_path, images(imgIdx*16).name), parts);
    str = strsplit(images(imgIdx*16).name, {'.', '\'});

    file_name = str{1};

    write_xml(file_name, parts, bbox);
end        
   
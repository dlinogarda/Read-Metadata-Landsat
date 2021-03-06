function image = lsread(index)
    if(~exist('File'))
        currentpath=dir;
        dirnum=size(currentpath);
        File=[];
        MTL_File=[];
        for i=1:dirnum
            if(strcmp(currentpath(i).name,'.')==0 && strcmp(currentpath(i).name,'..')==0 && currentpath(i).isdir)
                cd(currentpath(i).name)
                MTL=dir('*MTL.txt');
                file=textread(MTL.name,'%s','delimiter','", ,=');
                linenum=size(file);
                str='struct(';
                first=true;
                for j=1:linenum
                    if(strcmp(char(file(j)),'LANDSAT_SCENE_ID'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_1'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_2'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_3'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_4'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_5'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_6'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_7'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_8'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_9'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_10'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_11'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'FILE_NAME_BAND_QUALITY'))
                        if(first)
                            str=[str 'char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                            first=false;
                        else
                            str=[str ',char(file(' num2str(j) ')),char(file(' num2str(j) '+2))'];
                        end
                    end
                    if(strcmp(char(file(j)),'CORNER_UL_PROJECTION_X_PRODUCT'))
                        if(first)
                            str=[str '''Left_Coordinate''' ',char(file(' num2str(j) '+1))'];
                            first=false;
                        else
                            str=[str ',' '''Left_Coordinate''' ',char(file(' num2str(j) '+1))'];
                        end
                    end
                    if(strcmp(char(file(j)),'CORNER_UL_PROJECTION_Y_PRODUCT'))
                        if(first)
                            str=[str '''Up_Coordinate''' ',char(file(' num2str(j) '+1))'];
                            first=false;
                        else
                            str=[str ',' '''Up_Coordinate''' ',char(file(' num2str(j) '+1))'];
                        end
                    end
                    if(strcmp(char(file(j)),'CORNER_LR_PROJECTION_X_PRODUCT'))
                        if(first)
                            str=[str '''Right_Coordinate''' ',char(file(' num2str(j) '+1))'];
                            first=false;
                        else
                            str=[str ',' '''Right_Coordinate''' ',char(file(' num2str(j) '+1))'];
                        end
                    end
                    if(strcmp(char(file(j)),'CORNER_LR_PROJECTION_Y_PRODUCT'))
                        if(first)
                            str=[str '''Low_Coordinate''' ',char(file(' num2str(j) '+1))'];
                            first=false;
                        else
                            str=[str ',' '''Low_Coordinate''' ',char(file(' num2str(j) '+1))'];
                        end
                    end
                    if(strcmp(char(file(j)),'REFLECTIVE_LINES'))
                        if(first)
                            str=[str '''Height''' ',char(file(' num2str(j) '+1))'];
                            first=false;
                        else
                            str=[str ',' '''Height''' ',char(file(' num2str(j) '+1))'];
                        end
                    end
                    if(strcmp(char(file(j)),'REFLECTIVE_SAMPLES'))
                        if(first)
                            str=[str '''Width''' ',char(file(' num2str(j) '+1))'];
                            first=false;
                        else
                            str=[str ',' '''Width''' ',char(file(' num2str(j) '+1))'];
                        end
                    end

                end
                str=[str ',' '''sh_h''' ',' '''''' ',' '''sh_w'',''''' ');'];
                MTL_File=eval(str);
                cd('..')
                File=[File;MTL_File];
            end
        end
        clearvars -except File index
        Left=str2num(File(1).Left_Coordinate);
        Up=str2num(File(1).Up_Coordinate);
        Right=str2num(File(1).Right_Coordinate);
        Low=str2num(File(1).Low_Coordinate);
        for i=1:size(File)
            if(str2num(File(i).Left_Coordinate)>Left)
                Left=str2num(File(i).Left_Coordinate);
            end
            if(str2num(File(i).Up_Coordinate)<Up)
                Up=str2num(File(i).Up_Coordinate);
            end
            if(str2num(File(i).Right_Coordinate)<Right)
                Right=str2num(File(i).Right_Coordinate);
            end
            if(str2num(File(i).Low_Coordinate)>Low)
                Low=str2num(File(i).Low_Coordinate);
            end
        end


        for i=1:size(File)
            File(i).sh_h=round((str2num(File(i).Up_Coordinate)-Up)/((str2num(File(i).Up_Coordinate)-str2num(File(i).Low_Coordinate)))*str2num(File(i).Height));
            File(i).sh_w=round((Left-str2num(File(i).Left_Coordinate))/((str2num(File(i).Right_Coordinate)-str2num(File(i).Left_Coordinate)))*str2num(File(i).Width));
            Hgt= round(str2num(File(i).Height)*(Up-Low)/(str2num(File(i).Up_Coordinate)-str2num(File(i).Low_Coordinate)));
            Wdt= round(str2num(File(i).Width)*(Right-Left)/(str2num(File(i).Right_Coordinate)-str2num(File(i).Left_Coordinate)));
        end
    end
    
    cd(File(index).LANDSAT_SCENE_ID)
    img=imread(File(index).FILE_NAME_BAND_1);
    image(:,:,1)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    img=imread(File(index).FILE_NAME_BAND_2);
    image(:,:,2)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    img=imread(File(index).FILE_NAME_BAND_3);
    image(:,:,3)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    img=imread(File(index).FILE_NAME_BAND_4);
    image(:,:,4)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    img=imread(File(index).FILE_NAME_BAND_5);
    image(:,:,5)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    img=imread(File(index).FILE_NAME_BAND_6);
    image(:,:,6)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    img=imread(File(index).FILE_NAME_BAND_7);
    image(:,:,7)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    img=imread(File(index).FILE_NAME_BAND_9);
    image(:,:,9)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    img=imread(File(index).FILE_NAME_BAND_10);
    image(:,:,10)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    img=imread(File(index).FILE_NAME_BAND_11);
    image(:,:,11)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    img=imread(File(index).FILE_NAME_BAND_QUALITY);
    image(:,:,12)=img(1+File(index).sh_h:File(index).sh_h+Hgt,1+File(index).sh_w:File(index).sh_w+Wdt);
    cd('..')
end
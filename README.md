# Reading metadata of Landsat 7 8 for level-1 imagery

This is the reading metadata program of Landsat Satellite 7 and 8, soon, will be released for reading metadata for Landsat Satellite 9. 

This compute capsule uses:
- [Matlab 2019](https://www.mathworks.com/products.html?s_tid=gn_ps)
- [lsread]
- [maincode]

## Quick Start Guide
1. First of all, you need to extract all multitemporal Landsat imagery (for ex. 2 folder of Landsat data level-1).
2. There two m data files, lsread which is the function and the main code which is the calling for a function. In the main code file, You can run and define the number inside the function, lsread(#), to read the metadata of the first folder in the directory. 
3. The file in img1 is the image result after meta data reading and registration.
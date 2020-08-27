#! /bin/bash



# prepare
ROOT_DIR=$(pwd)

#check file exist
SOURCE_FILE="${ROOT_DIR}/1024.png"
echo $SOURCE_FILE
if [[ ! -e ${SOURCE_FILE} ]]; then
	echo "文件不存在"
	exit 1
fi
DEST_DIR="${ROOT_DIR}/icon"
#如果目录有图片先清空
if [[ -d ${DEST_DIR} ]]; then
	rm -rf dir ${DEST_DIR}
fi
mkdir -p "${DEST_DIR}"
Image_NAME=("Icon-29.png" "Icon-58.png" "Icon-40.png" "Icon-80.png" "Icon-87.png" "Icon-57.png" "Icon-114.png" "Icon-76.png" "Icon-152.png" "Icon-120.png" "Icon-180.png" "Icon-60.png")
Image_SIZE=("29" "58" "40" "80" "87" "57" "114" "76" "152" "120" "180" "60")


#sips starting
cp "${SOURCE_FILE}" "${DEST_DIR}"
for ((i=0; i<${#Image_SIZE[@]} ;i++)); do
	size=${Image_SIZE[i]}
	sips -Z ${size} "${SOURCE_FILE}" --out "${DEST_DIR}/${Image_NAME[i]}"
done











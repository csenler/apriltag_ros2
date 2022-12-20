#!/bin/bash
echo -e ">>> deploying... \n"

mkdir -p deploy/{cfg}

SOURCE_DIR="./"
DEST_DIR="deploy"

echo -e "DEST_DIR: ${DEST_DIR} \n"

rsync -arpv --progress config/* ${DEST_DIR}/cfg/
rsync -arpv --progress bin/slam_node ${DEST_DIR}/
rsync -arpv --progress bin/image_streamer_node ${DEST_DIR}/
rsync -arpv --progress bin/edge_gateway_node ${DEST_DIR}/
rsync -arpv --progress ORB_SLAM3/Vocabulary/ORBvoc.txt ${DEST_DIR}/Vocabulary/
rsync -arpv --progress run_image_streamer_node.sh run_slam_node.sh get_saved_map_from_target.sh ${DEST_DIR}/


# rsync -arpv --progress ${PANGOLIN_DIR}/build/src/libpangolin.so ${DEST_DIR}/
rsync -arpv --progress ORB_SLAM3/Thirdparty/g2o/lib/libg2o.so ${DEST_DIR}/
rsync -arpv --progress ORB_SLAM3/Thirdparty/DBoW2/lib/libDBoW2.so ${DEST_DIR}/

rsync -arpv --progress --include="*.so" --exclude="*" ${PANGOLIN_DIR}/build/ ${DEST_DIR}/

# cp -R config ${DEST_DIR}/
# cp bin/slam_node_test ${DEST_DIR}/
# cp bin/image_streamer_test ${DEST_DIR}/
# cp ORB_SLAM3/Vocabulary/ORBvoc.txt ${DEST_DIR}/Vocabulary/


echo -e "\n >>> should be finished."
echo "HOME DIR : ${HOME}"
source "${HOME}/.bashrc"

echo "current DIR: ${PWD}"
PACKAGE_ROOT_DIR=${PWD}
echo "therefore, PACKAGE_ROOT_DIR: ${PACKAGE_ROOT_DIR}"

ROS2_WS_DIR=$(cd ${PACKAGE_ROOT_DIR}/../..; pwd) 
echo "ROS2_WS_DIR: ${PACKAGE_ROOT_DIR}"
echo "PWD: ${PWD}"

cd ${ROS2_WS_DIR}
echo "current DIR after cd (should be ros2_ws dir) : ${PWD}"



colcon build --cmake-args -DCMAKE_C_FLAGS="-Wno-unused-variable -Wno-sign-compare -Wno-unused-parameter" -DCMAKE_CXX_FLAGS="-Wno-unused-variable -Wno-sign-compare -Wno-unused-parameter" --packages-select apriltag_ros
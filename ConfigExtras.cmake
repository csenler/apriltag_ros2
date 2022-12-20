message(STATUS "CMAKE_SOURCE_DIR=${CMAKE_SOURCE_DIR}")

execute_process(    
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    OUTPUT_VARIABLE ROS2_WS_DIR
    OUTPUT_STRIP_TRAILING_WHITESPACE
    COMMAND /bin/bash "${CMAKE_SOURCE_DIR}/get_ros2_ws_for_cmakelist.sh"
)
# string(STRIP ${ROS2_WS_DIR} ROS2_WS_DIR)
message(STATUS "ROS2_WS_DIR=${ROS2_WS_DIR}")

find_package(apriltag_msgs REQUIRED PATHS "${ROS2_WS_DIR}/install/apriltag_msgs/share/apriltag_msgs/cmake")
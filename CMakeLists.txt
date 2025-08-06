cmake_minimum_required(VERSION 3.8)
project(naoqi_utilities_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "srv/Explore.srv"
  "srv/MoveTo.srv"
  "srv/PointAt.srv"
  "srv/SetTrackerMode.srv"
  "srv/GoToPosture.srv"
  "srv/SetStiffnesses.srv"
  "srv/SetOpenCloseHand.srv"
  "srv/SetBreathing.srv"
  "srv/SetSecurityDistance.srv"
  "srv/SetMoveArmsEnabled.srv"
  "srv/SetVolume.srv"
  "msg/WordConfidence.msg"
  "msg/LedParameters.msg"
  "srv/ConfigureSpeech.srv"
  "srv/GetVolume.srv"
  "srv/PlaySound.srv"
  "srv/PlayWebStream.srv"
  "srv/Say.srv"
  "srv/PlayAnimation.srv"
  DEPENDENCIES geometry_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()

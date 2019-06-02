## *********************************************************
##
## File autogenerated for the path_generator_ros_tool package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [{'upper': 'PUBLISHER_AND_SUBSCRIBER', 'lower': 'publisher_and_subscriber', 'srcline': 124, 'name': 'Publisher_and_subscriber', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT::PUBLISHER_AND_SUBSCRIBER', 'field': 'DEFAULT::publisher_and_subscriber', 'state': True, 'parentclass': 'DEFAULT', 'groups': [], 'parameters': [{'srcline': 23, 'description': 'Topic for example subscriber', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/path_generator_ros_tool/share/path_generator_ros_tool/cfg/PathGenerator.cfg', 'name': 'dummy_subscriber_topic', 'edit_method': '', 'default': 'in_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 24, 'description': 'Queue size for example subscriber', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/path_generator_ros_tool/share/path_generator_ros_tool/cfg/PathGenerator.cfg', 'name': 'dummy_subscriber_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 25, 'description': 'Topic for example publisher', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/path_generator_ros_tool/share/path_generator_ros_tool/cfg/PathGenerator.cfg', 'name': 'dummy_publisher_topic', 'edit_method': '', 'default': 'out_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 26, 'description': 'Queue size for example publisher', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/path_generator_ros_tool/share/path_generator_ros_tool/cfg/PathGenerator.cfg', 'name': 'dummy_publisher_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}], 'type': '', 'id': 1}], 'parameters': [{'srcline': 290, 'description': 'Sets the verbosity for this node', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'verbosity', 'edit_method': "{'enum_description': 'Sets the verbosity for this node', 'enum': [{'srcline': 15, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/path_generator_ros_tool/share/path_generator_ros_tool/cfg/PathGenerator.cfg', 'cconsttype': 'const char * const', 'value': 'debug', 'ctype': 'std::string', 'type': 'str', 'name': 'debug'}, {'srcline': 16, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/path_generator_ros_tool/share/path_generator_ros_tool/cfg/PathGenerator.cfg', 'cconsttype': 'const char * const', 'value': 'info', 'ctype': 'std::string', 'type': 'str', 'name': 'info'}, {'srcline': 17, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/path_generator_ros_tool/share/path_generator_ros_tool/cfg/PathGenerator.cfg', 'cconsttype': 'const char * const', 'value': 'warning', 'ctype': 'std::string', 'type': 'str', 'name': 'warning'}, {'srcline': 18, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/path_generator_ros_tool/share/path_generator_ros_tool/cfg/PathGenerator.cfg', 'cconsttype': 'const char * const', 'value': 'error', 'ctype': 'std::string', 'type': 'str', 'name': 'error'}, {'srcline': 19, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/path_generator_ros_tool/share/path_generator_ros_tool/cfg/PathGenerator.cfg', 'cconsttype': 'const char * const', 'value': 'fatal', 'ctype': 'std::string', 'type': 'str', 'name': 'fatal'}]}", 'default': 'debug', 'level': 0, 'min': '', 'type': 'str'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

PathGenerator_debug = 'debug'
PathGenerator_info = 'info'
PathGenerator_warning = 'warning'
PathGenerator_error = 'error'
PathGenerator_fatal = 'fatal'

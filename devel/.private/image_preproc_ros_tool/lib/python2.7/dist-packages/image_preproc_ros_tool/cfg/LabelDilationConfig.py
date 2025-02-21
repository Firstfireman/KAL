## *********************************************************
##
## File autogenerated for the image_preproc_ros_tool package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [{'upper': 'PUBLISHER_AND_SUBSCRIBER', 'lower': 'publisher_and_subscriber', 'srcline': 124, 'name': 'Publisher_and_subscriber', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT::PUBLISHER_AND_SUBSCRIBER', 'field': 'DEFAULT::publisher_and_subscriber', 'state': True, 'parentclass': 'DEFAULT', 'groups': [], 'parameters': [{'srcline': 25, 'description': 'Topic for subscriber', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/LabelDilation.cfg', 'name': 'subscriber_topic', 'edit_method': '', 'default': 'in_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 26, 'description': 'Queue size for subscriber', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/LabelDilation.cfg', 'name': 'subscriber_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 27, 'description': 'Topic for publisher', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/LabelDilation.cfg', 'name': 'publisher_topic', 'edit_method': '', 'default': 'out_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 28, 'description': 'Queue size for publisher', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/LabelDilation.cfg', 'name': 'publisher_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}], 'type': '', 'id': 1}], 'parameters': [{'srcline': 290, 'description': 'Sets the verbosity for this node', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'verbosity', 'edit_method': "{'enum_description': 'Sets the verbosity for this node', 'enum': [{'srcline': 15, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/LabelDilation.cfg', 'cconsttype': 'const char * const', 'value': 'debug', 'ctype': 'std::string', 'type': 'str', 'name': 'debug'}, {'srcline': 16, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/LabelDilation.cfg', 'cconsttype': 'const char * const', 'value': 'info', 'ctype': 'std::string', 'type': 'str', 'name': 'info'}, {'srcline': 17, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/LabelDilation.cfg', 'cconsttype': 'const char * const', 'value': 'warning', 'ctype': 'std::string', 'type': 'str', 'name': 'warning'}, {'srcline': 18, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/LabelDilation.cfg', 'cconsttype': 'const char * const', 'value': 'error', 'ctype': 'std::string', 'type': 'str', 'name': 'error'}, {'srcline': 19, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/LabelDilation.cfg', 'cconsttype': 'const char * const', 'value': 'fatal', 'ctype': 'std::string', 'type': 'str', 'name': 'fatal'}]}", 'default': 'info', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 290, 'description': 'if true do erosion, toherwise dilation', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'erode', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 290, 'description': '0.5* kernel sioze of the filter', 'max': 20, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'half_kernel_size', 'edit_method': '', 'default': 3, 'level': 0, 'min': 0, 'type': 'int'}], 'type': '', 'id': 0}

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

LabelDilation_debug = 'debug'
LabelDilation_info = 'info'
LabelDilation_warning = 'warning'
LabelDilation_error = 'error'
LabelDilation_fatal = 'fatal'

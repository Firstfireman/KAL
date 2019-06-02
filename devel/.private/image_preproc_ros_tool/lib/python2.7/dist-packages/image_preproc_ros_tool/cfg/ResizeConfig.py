## *********************************************************
##
## File autogenerated for the image_preproc_ros_tool package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 290, 'description': 'Sets the verbosity for this node', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'verbosity', 'edit_method': "{'enum_description': 'Sets the verbosity for this node', 'enum': [{'srcline': 15, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/Resize.cfg', 'cconsttype': 'const char * const', 'value': 'debug', 'ctype': 'std::string', 'type': 'str', 'name': 'debug'}, {'srcline': 16, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/Resize.cfg', 'cconsttype': 'const char * const', 'value': 'info', 'ctype': 'std::string', 'type': 'str', 'name': 'info'}, {'srcline': 17, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/Resize.cfg', 'cconsttype': 'const char * const', 'value': 'warning', 'ctype': 'std::string', 'type': 'str', 'name': 'warning'}, {'srcline': 18, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/Resize.cfg', 'cconsttype': 'const char * const', 'value': 'error', 'ctype': 'std::string', 'type': 'str', 'name': 'error'}, {'srcline': 19, 'description': '', 'srcfile': '/home/kal1-4/anicar_ws/devel/.private/image_preproc_ros_tool/share/image_preproc_ros_tool/cfg/Resize.cfg', 'cconsttype': 'const char * const', 'value': 'fatal', 'ctype': 'std::string', 'type': 'str', 'name': 'fatal'}]}", 'default': 'info', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 290, 'description': 'Scale to apply when resizing image (must be 1 if new_width/height is set!)', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'scale', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 1e-06, 'type': 'double'}, {'srcline': 290, 'description': 'target width for resizing image (must be -1 if scale is set!)', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'new_width', 'edit_method': '', 'default': -1, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 290, 'description': 'Scale to apply when resizing image (must be -1 if scale is set!)', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'new_height', 'edit_method': '', 'default': -1, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 290, 'description': 'x coordinate of ROI for cropping image(applied before rescale)', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'roi_x', 'edit_method': '', 'default': -1, 'level': 0, 'min': -1, 'type': 'int'}, {'srcline': 290, 'description': 'y coordinate of ROI for cropping image (applied before rescale)', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'roi_y', 'edit_method': '', 'default': -1, 'level': 0, 'min': -1, 'type': 'int'}, {'srcline': 290, 'description': 'x coordinate of ROI for cropping image (applied before rescale)', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'roi_width', 'edit_method': '', 'default': -1, 'level': 0, 'min': -1, 'type': 'int'}, {'srcline': 290, 'description': 'x coordinate of ROI for cropping image (applied before rescale)', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'roi_height', 'edit_method': '', 'default': -1, 'level': 0, 'min': -1, 'type': 'int'}], 'type': '', 'id': 0}

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

Resize_debug = 'debug'
Resize_info = 'info'
Resize_warning = 'warning'
Resize_error = 'error'
Resize_fatal = 'fatal'

# *********************************************************
#
# File autogenerated for the demo_image_processing_ros_tool package
# by the rosparam_handler package.
# Please do not edit.
#
# *********************************************************
import rospy

param_description = [{'constant': False, 'description': 'Queusize for publisher', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'msg_queue_size', 'min': 1, 'default': 5, 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Set logger level for this node', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'verbosity', 'min': None, 'default': 'info', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Image publisher topic name', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'topic_publisher', 'min': None, 'default': '/image_out', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'MotorCommand topic name', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'motor_command_topic', 'min': None, 'default': 'motor_command', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'ServoCommand topic name', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'servo_command_topic', 'min': None, 'default': 'servo_command', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Image subscriber topic name', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'topic_subscriber', 'min': None, 'default': '/image_in', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Number of pixels to assume detected pylon', 'pytype': 'int', 'max': 5000, 'is_vector': False, 'edit_method': '""', 'name': 'threshold', 'min': 0, 'default': 350, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Minimum hue value', 'pytype': 'int', 'max': 255, 'is_vector': False, 'edit_method': '""', 'name': 'h_min', 'min': 0, 'default': 0, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Maximum hue value', 'pytype': 'int', 'max': 255, 'is_vector': False, 'edit_method': '""', 'name': 'h_max', 'min': 0, 'default': 5, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Minimum saturation value', 'pytype': 'int', 'max': 255, 'is_vector': False, 'edit_method': '""', 'name': 's_min', 'min': 0, 'default': 150, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Maximum saturation value', 'pytype': 'int', 'max': 255, 'is_vector': False, 'edit_method': '""', 'name': 's_max', 'min': 0, 'default': 255, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Minimum value value', 'pytype': 'int', 'max': 255, 'is_vector': False, 'edit_method': '""', 'name': 'v_min', 'min': 0, 'default': 50, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Maximum value value', 'pytype': 'int', 'max': 255, 'is_vector': False, 'edit_method': '""', 'name': 'v_max', 'min': 0, 'default': 255, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Maximum value value', 'pytype': 'int', 'max': 50, 'is_vector': False, 'edit_method': '""', 'name': 'median_blur_kernel_size', 'min': 1, 'default': 3, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}]

defaults = {}

for param in param_description:
    defaults[param['name']] = param['default']


class PylonDetectorParameters(dict):
    def __init__(self):
        super(self.__class__, self).__init__(defaults)
        self.from_param_server()

    __getattr__ = dict.__getitem__
    __setattr__ = dict.__setitem__

    def from_param_server(self):
        """
        Reads and initializes parameters with values from parameter server.
        Called automatically at initialization.
        """
        for k, v in self.iteritems():
            config = next((item for item in param_description if item["name"] == k), None)
            if config['constant']:
                self.test_const_param(k)
                continue

            self[k] = self.get_param(k, config)

    def from_config(self, config):
        """
        Reads parameter from a dynamic_reconfigure config file.
        Should be called in the callback of dynamic_reconfigure.
        :param config: config object from dynamic reconfigure
        """
        for k, v in config.iteritems():
            # handle reserved name groups
            if k == "groups":
                continue
            if not k in self:
                raise TypeError("Element {} of config is not part of parameters.".format(k))
            self[k] = v

    @staticmethod
    def test_const_param(param_name):
        if rospy.has_param("~" + param_name):
            rospy.logwarn(
                "Parameter {} was set on the parameter server even though it was defined to be constant.".format(
                    param_name))

    @staticmethod
    def get_param(param_name, config):
        full_name = "/" + param_name if config['global_scope'] else "~" + param_name
        val = rospy.get_param(full_name, config['default'])
        # test whether type is correct
        try:
            param_type = config['type']
            if config['is_vector']:
                val = list(val)
            elif config['is_map']:
                val = dict(val)
            elif param_type == 'std::string':
                val = str(val)
            elif param_type == 'int':
                val = int(val)
            elif param_type == 'bool':
                val = bool(val)
            elif param_type == 'float' or param_type == 'double':
                val = float(val)
        except ValueError:
            rospy.logerr(
                "Parameter {} is set, but has a different type. Using default value instead.".format(param_name))
            val = config['default']
        # test bounds
        if config['min'] is not None and config['min'] > val:
            rospy.logerr(
                "Value of {} for {} is smaller than minimal allowed value. "
                "Correcting value to min={}".format(val, param_name, config['min']))
            val = config['min']
        if config['max'] is not None and config['max'] < val:
            rospy.logerr(
                "Value of {} for {} is greater than maximal allowed value. "
                "Correcting value to max={}".format(val,param_name, config['max']))
            val = config['max']
        return val

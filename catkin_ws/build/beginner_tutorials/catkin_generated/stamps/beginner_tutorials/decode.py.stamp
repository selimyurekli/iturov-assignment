import rospy
import std_msgs.msg import String


class Decoder():
	def __init__(self):
		rospy.init("decode")
		self.dec_16 = rospy.Subscriber('/serial/drive', String, queue_size = 10)
		self.dec_24 = rospy.Subscriber('/serial/robotic_arm', String, queue_size = 10)

		rospy.spin()

	def callback(data):
		rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data),

	

if __name__ == '__main__':
	d= Decoder()

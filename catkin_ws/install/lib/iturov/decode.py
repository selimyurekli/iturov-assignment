#!/usr/bin/env python 
# -*- coding: utf-8 -*-

import rospy
from std_msgs.msg import String


class Decoder:
	def __init__(self):
		rospy.init_node("decode")		
		rospy.Subscriber('/serial/drive', String,self.callback)
		rospy.Subscriber('/serial/robotic_arm', String,self.callback)
		rospy.spin()
		

	def callback(self, data):
		if(data.data[0] == 'A' and data.data[len(data.data)-1]=='B'): #Check if string is in correct format
			string_list = self.split(data.data)
			processed_data = self.process_data(string_list)
			combined_string = self.convert_string(processed_data)

			if(len(string_list)==4):#bottom decoding /position/drive
				self.publish('/position/drive',combined_string)
			else:			#robotic decoding /position/robotic_arm
				self.publish('/position/robotic_arm',combined_string)
				
	def publish(self,topic,string):
		pub = rospy.Publisher(topic, String, queue_size=10)
	  	rate = rospy.Rate(10) # 10hz   	
	   	print("sent: ", string)
	   	pub.publish(string)
	   	rate.sleep()			
		
	def process_data(self,string_list):
		number_list =[]
		for data_group in string_list:
			sign = data_group[0]
			number = int(data_group[1:4])
			if(number>255):
				number = 255
			if(sign=='1'):
				number = -1*number
			number_list.append(number)
				
		return number_list
	def convert_string(self,number_list):
		combined_string = "".join(str(num)+' ' for num in number_list)
		return combined_string[0:len(combined_string)-1]
		
		 	
	def split(self,string):
		string_list = []
		string = string[1:len(string)-1]

		for i in range(0,len(string),4):
			string_list.append(string[i:i+4])
		return string_list
			

if __name__ == '__main__':
	d= Decoder()

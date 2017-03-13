#!/usr/bin/env python
origin=[0,0]
def create(pos=origin):
	def player(direction,step):
		new_x=pos[0]+direction[0]*step
		new_y=pos[1]+direction[1]*step
		pos[0]=new_x #important 导入全部闭包函数查局部变量
		pos[1]=new_y
		return pos
	return player

player=create()
print player([1,0],10)
print player([0,1],20)
print player([-1,0],10)

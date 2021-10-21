for i in range(0,100):
    print("\t\t7'b"+str("{0:07b}".format(i))+": bcd = 8'b"+str("{0:04b}".format(i//10))+str("{0:04b}".format(i%10))+";\t//"+str(i))

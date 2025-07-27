def basic_print(string):
    print("input name is :", string)
    print(f"{string} is given as input name")
    print("{} is given as input name string".format(string))
    print("The input name given is %s" % (string))


name="suresh"
basic_print(name)
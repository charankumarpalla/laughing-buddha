import os,json
dirname = os.path.dirname(__file__)
filename = os.path.join(dirname, "NoteBookA.ipynb")

print(filename)


with open(filename) as json_file:
    data = json.load(json_file)
    for i in data['cells']:
        # a=i;
        # print(i)
        # for j in data['cells']:
        print(i)

        # print(data['cells'][2])
    print(type(data))
#   


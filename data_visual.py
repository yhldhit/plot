import numpy as np


method_set = {'baseline','cdir','conv','motorz'};
metric = 'precision'
datadict = {}
for method in method_set:
    file_patrn = "run_{}_eval,tag_eval_{}.csv".format(method,metric)
    fd = open(file_patrn,'r')
    d = np.loadtxt(fd,
           skiprows=1,
           delimiter=',',
           dtype={'names': ('time', 'step', 'value'),
           'formats': ('float', 'i4', 'float')}) #s4 for string
    d_list = [np.asarray([d_[1],d_[2]]) for d_ in d]
    d_matrix = np.concatenate(d_list,axis=0)
    datadict[method] = d_matrix
    fd.close()


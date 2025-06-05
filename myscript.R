library(cccn.cfn.tools)
set.seed(45)
MakeClusterList(ptmtable, toolong = 3.5)
MakeCorrelationNetwork(keeplength = 2)
print("cccn_matrix:")
cccn_matrix

toMatch <- c("mean\\(\\)[-]", "std\\(\\)[-]")
vv = read.table("activity_labels.txt", sep = "")
al = as.character(vv$V2) #activityLabels = as.character(temp$V2)
att = fe$V2 #attributeNames = temp$V2
xtr = read.table("train/X_train.txt", sep = "")
names(xtr) = att
xtr=xtr[grep(toMatch,names(xtr))]

xte = read.table("test/X_test.txt", sep = "")
names(xte) = att
xte=xte[grep(toMatch,names(xte))]
final = rbind(xte, xte)
save(final, file = "result.txt")


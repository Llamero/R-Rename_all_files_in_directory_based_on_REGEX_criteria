#Set working directory to file directory with data
setwd("E:/Grady Lab/Hessam/140623/All sample statistics for automated analysis/10_140625 PS 55-1~2 - 8 bit_Statistics")

#Get list of all files in directory
AllFiles<-list.files()

for (a in 1:length(AllFiles)) {
	#In each file name generate new name based on old name using REGEX rules
	NewName<-sub(" - .* - .* - ", "~2 - ", AllFiles[a])
	
	#Allows for checking new name first
	#cat(AllFiles[a])
	#cat("\n")
	#cat(NewName)
	#cat("\n")
	
	#Replace old name with new name
	file.rename(AllFiles[a], NewName)
	}
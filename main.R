# Question 1

# Download file
if(!file.exists("./data")){dir.create("./data")}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileURL,destfile="./data/households.csv")
houseData <- read.csv("./data/households.csv")

# The code book is at https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

# take a quick look
head(houseData, n=3) # show top 3, 6 is the default

#Create a logical vector that identifies the households on greater than 10 acres who sold 
# more than $10,000 worth of agriculture products. 
# Assign that logical vector to the variable agricultureLogical. 
# Apply the which() function like this to identify the rows of the data frame 
# where the logical vector is TRUE.

houseData <- transform(houseData, agricultureLocal = (houseData$ACR > 10 & houseData$AGS == 6))



houseData$agricultureLocal



agricultureLocal <- houseData[(houseData$ACR > 10 & houseData$AGS == 6),] 
which(agricultureLocal)


X <- X$SERIALNO
X

houseData[houseData$ACR > 10,]














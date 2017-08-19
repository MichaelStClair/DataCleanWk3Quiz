# Question 1

# Download file
if(!file.exists("./data")){dir.create("./data")};
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv";
download.file(fileURL,destfile="./data/households.csv");
houseData <- read.csv("./data/households.csv");

# The code book is at https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

#Create a logical vector that identifies the households on greater than 10 acres who sold 
# more than $10,000 worth of agriculture products. 
# Assign that logical vector to the variable agricultureLogical. 
# Apply the which() function like this to identify the rows of the data frame 
# where the logical vector is TRUE.
agricultureLocal <- (houseData$ACR == 3 & houseData$AGS == 6);
which(agricultureLocal)[1:3]



# Question 2

# Read the JPEG into R
# install.packages("jpeg")
library(jpeg)
if(!file.exists("./data")){dir.create("./data")}
destFile <- "./data/jeff.jpg"
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
download.file(fileUrl,destfile=destFile,mode="wb")
img <- readJPEG(destFile, native = TRUE)
quantile(img, probs = c(0.3, 0.8))
#       30%       80% 
#  -15259150 -10575416 


## Question 3

# we are gonna use library(plyr)
# install.packages("plyr")
library(plyr)

# Get GDP and EDU data
if(!file.exists("./data")){dir.create("./data")}
GDPfileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
EDUfileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
GDPdestFile <- "./data/gdp.csv"
EDUdestFile <- "./data/edu.csv"
download.file(GDPfileUrl,destfile=GDPdestFile)
download.file(EDUfileUrl,destfile=EDUdestFile)

# Load into data frames
GDPdata <- read.csv(GDPdestFile)
EDUdata <- read.csv(EDUdestFile)

mergeData <- merge(x = GDPdata, y = EDUdata, by.x = "X", by.y = "CountryCode")

head(arrange(mergeData,desc(Gross.domestic.product.2012)), n = 25)


mergeData[1:13,]

head(sort(mergeData$Gross.domestic.product.2012,decreasing=TRUE), n = 13)

testData <- mergeData[order("Gross.domestic.product.2012", decreasing = TRUE)]

testData$

mergeData[1:13, order("Gross.domestic.product.2012", decreasing = TRUE)]


sample(mergeData)


head(GDPdata, n=3)




























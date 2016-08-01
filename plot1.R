dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")##读取数据
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]##选择数据


globalActivePower <- as.numeric(subSetData$Global_active_power)##转换数据格式
png("plot1.png", width=480, height=480)##生成图片空文件
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")##画图
dev.off()##关闭设备
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")##��ȡ����
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]##ѡ������


globalActivePower <- as.numeric(subSetData$Global_active_power)##ת�����ݸ�ʽ
png("plot1.png", width=480, height=480)##����ͼƬ���ļ�
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")##��ͼ
dev.off()##�ر��豸
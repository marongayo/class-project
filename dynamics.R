library(ggplot2)

custom.col <- c("#FFDB6D", "#C4961A", "#F4EDCA", 
                         "#D16103", "#C3D7A4", "#52854C", "#4E84C4", "#293352")
                         
ggplot(dynamics, aes(x=HS_Head)) + 
  geom_bar(stat="count", fill=c('#0000FF','#7EC8E3')) + 
  labs(title="Household Heads by Gender", x="Household Head", y="Count")+
  theme(plot.title = element_text(hjust = 0.5))
  
table(dynamics$HS_Head)
head(dynamics)
dynamics$house_type <- factor(dynamics$house_type)

ggplot(dynamics, aes(x=reorder(house_type, -..count..), y=HS_size, fill=as.factor(HS_size))) +
  geom_bar(position="dodge") +
  labs(title="Group and Gender Distribution", x="Group", y="Count") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("red", "brown", "green","yellow",'orange','blue'))







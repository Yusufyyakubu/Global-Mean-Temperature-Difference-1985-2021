library(ggplot2)

gcmd = read.csv(file.choose(), header=T)
gcmd

ggplot(gcmd, aes(x=Year, y=Anomaly, group=GCM))+
  geom_line(aes(color=GCM))+
  scale_linetype_manual(values = c("solid", "solid", "solid", "solid"))+
  scale_color_manual(values = c("5", "4", "2", "3"))+
  scale_size_manual(values = c(1,1,5,1,1))+
  theme_classic(base_family = "serif")+
  labs(title = "", x="Year", y="Temperature Anomaly")+
  theme(legend.position = "top",
        plot.title = element_text(color = "grey20", size = 12, hjust = .5, face = "plain", margin=margin(10,10,10,10)),
        axis.text.x = element_text(color = "grey20", size = 10, angle = 0, hjust = .5, vjust = .5, face = "plain"), 
        axis.text.y = element_text(color = "grey20", size = 10, angle = 0, hjust = .5, vjust = .5, face = "plain"),
        axis.title.x = element_text(color = "red", size = 12, angle = 0, hjust = .5, vjust = .0, face = "bold"),
        axis.title.y = element_text(color = "red", size = 12, angle = 90, hjust = .5, vjust = .5, face = "bold"))+
  theme(legend.position = c(.03,.9),
        legend.justification = c("left", "top"),
        legend.box.just = "left",
        legend.margin = margin(2,2,2,2))+
  scale_x_continuous(limits = c(1850,2021), breaks = scales::breaks_width(20))+
  scale_y_continuous(limits = c(-0.8,1.5), breaks = scales::breaks_width(0.2))+
  annotate("text", x=c(1899), y=1.45, size=4, label=c("Global Mean Temperature Difference 1985 - 2021"))
           
           
           
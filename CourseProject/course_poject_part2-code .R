library(datasets)
tg <- ToothGrowth
tg$dose <- as.factor(tg$dose)
str(tg)

ggplot(data=tg, aes(x=dose, y=len, fill=supp)) +
    geom_bar(stat="identity") + 
    facet_grid(. ~ supp) + 
    xlab("Dose [mg]") + 
    ylab("Tooth length") + 
    guides(fill=guide_legend(title="Delivery method"))

ggplot(data=tg, aes(x=supp, y=len)) +
    geom_boxplot(aes(fill=dose)) +
    xlab("Supplement") +
    ylab("Tooth length") + 
    guides(fill=guide_legend(title="Dose"))
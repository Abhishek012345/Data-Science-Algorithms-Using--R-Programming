attach(wc.at)
plot(Waist, AT)
cor(Waist,AT)
reg <- lm(AT~Waist, data = wc.at)
summary(reg)
pred <- predict(reg,interval="predict")
pred <- as.data.frame(pred)
pred
cor(pred$fit, wc.at$AT)
reg_sqrt <- lm(AT~sqrt(Waist), data = wc.at)
summary(reg_sqrt)
pred1 <- predict(reg_sqrt,interval="predict")
pred1 <- as.data.frame(pred1)
pred1
reg_log <- lm(AT~log(Waist), data = wc.at)
summary(reg_log)
pred2 <- predict(reg_log, interval = "predict")
pred2 <- as.data.frame(pred2)
reg_1 <- lm(log(AT)~Waist + I(Waist*Waist), data = wc.at)
summary(reg_1)
pred3 <- predict(reg_1, interval = "predict")
pred3 <- as.data.frame(pred3)
pred3
exp(pred3$fit)

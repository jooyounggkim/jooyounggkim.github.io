library(tidyr)
library(caret)
library(quantregForest)
library(ggplot2)
library(ggridges)

head(mtcars)
qrf<- train(mpg ~ cyl + disp + hp + drat + wt, data = mtcars, method = 'qrf')  # train QRF model
n_cars = 8
class(qrf$finalModel) <- 'randomForest'
pred <- predict(qrf$finalModel, mtcars[1:n_cars,], predict.all = T)
str(pred)
# returns list of 1) aggregated predictions (100 of them), individual predictions for each tree (100 x 500 trees)


# reshape individual tree predictions for ggplot
obs <- mtcars$mpg[1:n_cars]
car <- row.names(mtcars)[1:n_cars]
tree_pred <- as.data.frame(pred$individual)
colnames(tree_pred) <- 1:500
tree_pred$obs <- obs
tree_pred$car <- car
tree_pred_long <- gather(tree_pred, tree, pred, 1:500)

# reshape aggregate predictions for ggplot
agg <- aggregate(pred ~ obs + car, data = tree_pred_long, FUN = mean)  # same as pred$aggregate values
colnames(agg) <- c('obs', 'car', 'mean_pred')
pred_obs <- data.frame(pred = pred$aggregate, obs = obs)
pred_obs <- merge(pred_obs, agg, by = 'obs')

# plot distribution of tree predictions and aggregate prediction of final QRF model
ggplot(tree_pred_long) + 
  geom_abline(slope = 1, intercept = 0, lty = 2)+  # line of identity
  geom_density_ridges(aes(x = pred, y = obs, group = car, fill = car),
                      alpha = 0.3, color = 'black', rel_min_height = 0.02, size = 0.5)+
  geom_point(data = pred_obs, aes(x = pred, y = obs, fill = car), pch = 21, size = 2)+
  theme_classic()+
  ggtitle('Seeing the (Random) Forest for the Trees')+
  coord_fixed(xlim = c(12,28), ylim = c(12,28))+
  scale_y_continuous('Observed MPG', breaks = seq(15,30,5))+
  scale_x_continuous('Predicted MPG', breaks = seq(15,30,5))


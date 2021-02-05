library(dplyr)
library(gapminder)
gapminder$country
#1.1
data1.1 <- gapminder %>% 
  filter(country == "Afghanistan"|country == "Albania"|country == "Angola", year < 1980 & year > 1969)  
#1.2
data1.1 %>% 
  select(country, gdpPercap)
#1.3
gapminder %>%
  mutate(lifeExpchange=diff(lifeExp, lag = 1)) %>% 
  filter(lifeExpchange<0)
lifeExpchange1 <- gapminder %>% 
  arrange(year) %>% 
  mutate(lifeExpchange = lifeExp - lag(lifeExp))
lifeExpchange1 %>% 
  filter(lifeExpchange<0)
#1.4
gapminder %>%
  group_by(country) %>%
  summarize(maxGdpPercap = max(gdpPercap))
#1.5
gapminder %>%
  filter(country=="Canada") %>% 
  ggplot() +
  aes(x = gdpPercap,
      y = lifeExp) +
  geom_point() +
  scale_x_log10()


#2.1
palmerpenguins::penguins
palmerpenguins::penguins %>% 
  summarize(mu1=mean(bill_length_mm, na.rm = T), sigma1=sd(bill_length_mm, na.rm = T), median1=median(bill_length_mm, na.rm = T),
            mu2=mean(flipper_length_mm, na.rm = T), sigma2=sd(flipper_length_mm, na.rm = T), median=median(flipper_length_mm, na.rm = T))
library(ggplot2)
ggplot(palmerpenguins::penguins) +
  aes(x = bill_length_mm,
      y = flipper_length_mm) +
  geom_point()
#2.2
summary_table <- palmerpenguins::penguins %>%
  group_by(sex) %>%
  summarise(mu = mean(bill_length_mm, na.rm = T), sigma = sd(bill_length_mm, na.rm = T), sample = n())
ggplot(palmerpenguins::penguins) +
  aes(sex) +
  geom_bar()
ggplot(palmerpenguins::penguins) +
  aes(x = sex,
      y = bill_length_mm,
      fill = sex,
      color = sex) +
  geom_jitter(height = 0,
              width = .4) +
  geom_boxplot(color = "black",
               alpha = .5)
#bonus
library(gapminder)
gapminder %>% 
  filter(country == "Rwanda" | country == "Afghanistan")
  
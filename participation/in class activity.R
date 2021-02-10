psych::bfi
library(dplyr)
bfi1 <- psych::bfi %>% 
  rowwise() %>% 
  mutate(C=mean(c_across(C1:C5), na.rm = T),
         A=mean(c_across(A1:A5), na.rm = T),
         O=mean(c_across(O1:O5), na.rm = T),
         E=mean(c_across(E1:E5), na.rm = T),
         N=mean(c_across(N1:N5), na.rm = T)) 
bfi2 <- bfi1 %>% 
  select(O,C,E,A,N,gender,age,education)
bfi2 %>% 
  group_by(gender) %>%
  summarize(across(c(O,C,E,A,N), list(mean= ~ mean(.x, na.rm=T), sd= ~sd(.x, na.rm = T), 
                                      min= ~min(.x, na.rm = T), max= ~max(.x, na.rm = T))))
bfi2 %>% 
  group_by(education) %>%
  summarize(across(c(O,C,E,A,N), list(mean= ~ mean(.x, na.rm=T), sd= ~sd(.x, na.rm = T), 
                                      min= ~min(.x, na.rm = T), max= ~max(.x, na.rm = T))))

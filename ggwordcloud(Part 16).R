require(ggwordcloud)


#============External file===========
require(qdap)

x=readLines(file.choose())
xx=freq_terms(x)
xx
ggplot(xx, 
       aes(label = WORD, 
           size=FREQ, 
           col=WORD)) +
  geom_text_wordcloud_area(shape = "diamond")+
  scale_size_area(max_size = 24)

#Shape can be circle, square, diamond, cardioid,
#triangle-forward, triangle-upright,pentagon,
 
#========From Tutorial=============

data("love_words_small")
data("love_words")

ggplot(love_words_small, 
       aes(label = word)) +
  geom_text_wordcloud() +
  theme_minimal()

ggplot(love_words_small, 
       aes(label = word, size = speakers)) +
  geom_text_wordcloud() +
  scale_size_area(max_size = 20) +
  theme_minimal()
#for()
i <- c(1 : 10)
for(n in i) {
  print(n * 10)
  print(n)
}

for(n in i) {
  if(n %% 2 == 0) print(n)
}

for(n in i) {
  if(n %% 2 == 0) {
    next
  } else {
    print(n)
  }
}

name <- c(names(exam))
for(n in name) {
  print(n)
}

score <- c(85, 95, 98)
name <- c('john', 'james', 'stephen')

i <- 1
for(s in score) {
  cat(name[i], " -> ", s, '\n')
  i <- i + 1
}

#while()
i = 0
while(i < 10) {
  i <- i + 1
  print(i)
}

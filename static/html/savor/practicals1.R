# SAVOR practicals 1
## R brush up

### 1. Print function

myprint <- function(x){
  print(x)
}
print(2)

### 2 Default arguments

myprint()

myprint_def <- function(x = "no name"){
  print(x)
}
myprint_def()


### 3

hp_df <- cbind.data.frame("first_name" = c("Hermione", "Ron", "Harry"),
                          "last_name" = c("Granger", "Weasley", "Potter"),
                          "gender" = c("female", "male", "male"))
View(hp_df)
print_last_name <- function(x){
  for(i in 1:nrow(x)){
    print(as.character(x[i, "last_name"]))
  }
}
print_last_name(hp_df)


### 4 boucle while

print_last_name_while <- function(x){
  i <- 1
  while(i <= nrow(x)){
    print(as.character(x[i, "last_name"]))
    i <- i + 1
  }
}
print_last_name_while(hp_df)

### 5 if/else

print_name_if <- function(x){
  for(i in 1:nrow(x)){
    if(x[i, "gender"] == "female"){
      print(as.character(x[i, "last_name"]))
    }else if(x[i, "gender"] == "male"){
      print(as.character(x[i, "first_name"]))
    }else{
      print(as.character(x[i, "gender"]))
    }
  }
}
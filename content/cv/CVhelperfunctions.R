CRAN_Rpackage_display <- function(name, desc, GH_rep, year, role, details = ""){
  df <- cbind.data.frame(Package = paste0("\\textbf{", name, "}: \\small{an \\includegraphics[height=11pt]{Rlogo.png} package for ",
                                          desc, ". Available on \\href{https://CRAN.R-project.org/package=", name, "}{CRAN}, ",
                                          "development version on \\href{https://github.com/", GH_rep, "}{GitHub \\includegraphics[height=11pt]{github-mark.png}}. \\textit{",
                                          role, "}}"),
                          Year = year,
                          Details=""
  )
  return(df)
}

Bioc_Rpackage_display <- function(name, desc, GH_rep, year, role, details = ""){
  df <- cbind.data.frame(Package = paste0("\\textbf{", name, "}: \\small{an \\includegraphics[height=11pt]{Rlogo.png} package for ",
                                          desc, ". Available on \\href{https://bioconductor.org/packages/", name, "}{\\includegraphics[height=11pt]{bioconductorLogo.jpg}}, ",
                                          "development version on \\href{https://github.com/", GH_rep, "}{GitHub \\includegraphics[height=11pt]{github-mark.png}}. \\textit{",
                                          role, "}}"),
                         Year = year,
                         Details=""
  )
  return(df)
}

GH_Rpackage_display <- function(name, desc, GH_rep, year, role, details = ""){
  df <- cbind.data.frame(Package = paste0("\\textbf{", name, "}: \\small{an \\includegraphics[height=11pt]{Rlogo.png} package for ",
                                          desc, ". Available on \\href{https://github.com/", GH_rep, "}{GitHub \\includegraphics[height=11pt]{github-mark.png}}. \\textit{",
                                          role, "}}"),
                         Year = year,
                         Details=""
  )
  return(df)
}

Shiny_Rpackage_display <- function(name, desc, GH_rep, url, year, role, details = ""){
  df <- cbind.data.frame(Package = paste0("\\textbf{", name, "}: \\small{an interactive \\includegraphics[height=11pt]{Rlogo.png} Shiny application for ",
                                          desc, ". Available \\href{", url, "}{online} or locally from the \\href{https://CRAN.R-project.org/package=", name, "}{CRAN}, ",
                                          "development version on \\href{https://github.com/", GH_rep, "}{GitHub \\includegraphics[height=11pt]{github-mark.png}}. \\textit{",
                                          role, "}}"),
                         Year = year,
                         Details=""
  )
  return(df)
}

initials <- function(v){
  words <- stringr::str_split(v, " ")[[1]]
  inits <- paste0(sapply(words, substr, start=1, stop=1), collapse = "")
  return(inits)
}

author_format <- function(a, contribeq = NULL){

  e <- try(a$family, silent = TRUE)
  if(inherits(e, "try-error")){
    last <- sapply(a[[1]], "[[", 1)
    first <- character(length(last))
    for (i in 1:length(first)){
      first[i] <- ifelse(is.na(names(a[[1]][[i]][2])), "", a[[1]][[i]][2])
    }
    first <- unlist(first)
    seplast <- ", "
  }else{
    first <- strsplit(a$given, ", ")[[1]]
    last <- strsplit(a$family, ", ")[[1]]
    seplast <- " \\& "
  }
  inits <- sapply(first, initials)
  authors <- paste(last, inits, sep=" ")
  authors <- gsub(" $", "", authors, fixed=FALSE)
  authors <- gsub("Hejblum BP", "\\ul{Hejblum BP}", authors, fixed=TRUE)
  authors <- gsub("Hejblum B$", "\\ul{Hejblum B}", authors, fixed=FALSE)
  authors <- gsub("ul{Hejblum B}", "\\ul{Hejblum B}", authors, fixed=TRUE)
  if(!is.null(contribeq)){
    authors[contribeq] <- paste0(authors[contribeq], "\\*")
  }
  authors <- paste0(paste0(authors[-length(authors)], collapse=", "),
                    seplast, authors[length(authors)])
  return(authors)
}

bibitem_print <- function(bibrow, contribeq = NULL){
  authors <- author_format(bibrow$author, contribeq = contribeq)
  title <- bibrow$title
  journal <- paste0("\\textit{", bibrow$`container-title`, "}")
  year <- format.Date(as.Date(bibrow$issued), "%Y")
  res <- paste0(#"$\\bullet\\,$",
                authors, ". ",
                title, ". ",
                journal,
                ifelse(is.null(bibrow$volume) | is.na(bibrow$volume) | bibrow$volume == "",
                       "", paste0(" ", bibrow$volume)),
                ifelse(is.null(bibrow$issue) | is.na(bibrow$issue) | bibrow$issue == "",
                       ifelse(is.null(bibrow$volume) | is.na(bibrow$volume) | bibrow$volume == "",
                              "", ":"), paste0("(", bibrow$issue, "):")),
                ifelse(is.null(bibrow$page)| is.na(bibrow$page) | bibrow$page == "", "",
                       paste0(ifelse((is.null(bibrow$volume) | is.na(bibrow$volume) | bibrow$volume == "") &
                                (is.null(bibrow$issue) | is.na(bibrow$issue) | bibrow$issue == ""),
                              " ", ""), bibrow$page)),
                ", ", year, ". ",
                ifelse(is.null(bibrow$DOI)| is.na(bibrow$DOI) | bibrow$DOI == "",
                       "", paste0("\\texttt{DOI: \\href{https://doi.org/", bibrow$DOI, "}{\\url{", bibrow$DOI, "}}}")
                ),
                "\\medskip"
  )

  res <- gsub(" & ", " \\& ", res, fixed=TRUE)
  return(res)
}

bookitem_print <- function(bibrow, contribeq = NULL){
  authors <- author_format(bibrow$author, contribeq = NULL)
  title <- paste0("\\textit{", bibrow$title, "}")
  year <- format.Date(as.Date(bibrow$issued), "%Y")
  res <- paste0(#"$\\bullet\\,$",
    authors, ". ",
    title, ". ",
    bibrow$publisher, ", ",
    year, ". ",
    ifelse(is.null(bibrow$isbn)| is.na(bibrow$isbn) | bibrow$isbn == "",
           "", paste0("\\texttt{ISBN: ", bibrow$isbn, "}")),
    "\\medskip"
  )

  res <- gsub(" & ", " \\& ", res, fixed=TRUE)
  return(res)
}




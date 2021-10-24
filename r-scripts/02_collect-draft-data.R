
library(tidyverse)
library(here)

# tweaking Bill Petti's {baseballr} function get_draft_mlb(), it was returning
# an error
get_draft_mlb <- function(year) {
  column_structure_draft_mlb <- baseballr::column_structure_draft_mlb
  api_call <- paste0("http://statsapi.mlb.com/api/v1/draft/", 
                     year)
  payload <- jsonlite::fromJSON(api_call, flatten = TRUE)
  draft_table <- payload$drafts$rounds$picks
  draft_table <- draft_table %>% dplyr::bind_rows()
  column_structure_draft_mlb[1, ] <- NA
  draft_table_filled <- dplyr::bind_rows(column_structure_draft_mlb, 
                                         draft_table) %>% filter(!is.na(.data$bisPlayerId)) %>% 
    janitor::clean_names()
  return(draft_table_filled)
}

get_draft_mlb(2018) %>% View()




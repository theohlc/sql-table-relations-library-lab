def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
  FROM books
  WHERE series_id = 1
  ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  WHERE length(motto) = (SELECT max(length(motto)) FROM characters)"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species,
  COUNT(species) AS value_occurence
  FROM characters
  GROUP BY species
  ORDER BY value_occurence DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
  ON author_id = authors.id
  JOIN subgenres
  WHERE subgenres.id = subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  JOIN books
  ON series_id = series.id
  JOIN character_books
  ON book_id = books.id
  JOIN characters
  ON character_id = characters.id
  WHERE species = 'human'
  GROUP BY series.title
  ORDER BY COUNT(species) DESC
  LIMIT 1
  "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(name) AS occurence
  FROM characters
  JOIN character_books
  ON characters.id = character_books.character_id
  JOIN books
  ON character_books.book_id = books.id
  GROUP BY characters.name
  ORDER BY occurence DESC, characters.name"
end

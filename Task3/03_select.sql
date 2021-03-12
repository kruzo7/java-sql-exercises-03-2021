-- select query  for Exercises_12032021_Task3

SELECT AUTHORS.FIRST_NAME,
	AUTHORS.MIDDLE_NAME,
	AUTHORS.LAST_NAME
FROM AUTHORS AS AUTHORS
LEFT JOIN BOOKS_AUTHORS AS BA ON (AUTHORS.AUTHOR_ID = BA.AUTHOR_ID)
LEFT JOIN BOOKS AS BOOKS ON (BOOKS.BOOK_ID = BA.BOOK_ID)
LEFT JOIN PUBLISHERS AS PUBLISHERS ON (PUBLISHERS.PUBLISHER_ID = BOOKS.PUBLISHER_ID)
LEFT JOIN BOOKS_GENRES AS BG ON (BOOKS.BOOK_ID = BG.BOOK_ID)
LEFT JOIN GENRES AS GENRES ON (BG.GENRE_ID = GENRES.GENRE_ID) ;
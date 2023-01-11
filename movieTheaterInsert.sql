INSERT INTO movie(
    movie_id,
    content_rating,
    title
)VALUES(
    1,
    'PG-13',
    'Lord of the Rings'
);

INSERT INTO ticket(
    ticket_id,
    price,
    order_date,
    matinee,
    movie_id
)VALUES(
    1,
    9.99,
    '2023-01-11',
    True,
    1
)

INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    ticket_id
)VALUES(
    1,
    'Rogelio',
    'David'
    'Rincon',
    1
)

INSERT INTO concession(
    item_id,
    item_name,
    price,
    customer_id
)VALUES(
    1,
    'Popcorn',
    7.99,
    1
)


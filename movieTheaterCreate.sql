CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    content_rating VARCHAR(100),
    title VARCHAR(100)
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    price NUMERIC(10,2),
    order_date DATE DEFAULT CURRENT_DATE,
    matinee BOOLEAN,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);

CREATE TABLE concession(
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100),
    price NUMERIC(10,2),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

ALTER TABLE customer
add middle_name VARCHAR(100)
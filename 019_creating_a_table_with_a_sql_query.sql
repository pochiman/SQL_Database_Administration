USE myfirstcodeschema;

CREATE TABLE myfirstcodetable (
	myfirstcodetable_id BIGINT NOT NULL,
    my_character_field VARCHAR(50),
    my_text_field TEXT,
    my_created_at TIMESTAMP,
    PRIMARY KEY (myfirstcodetable_id)
);

SELECT
	my_text_field,
    my_created_at
FROM myfirstcodetable;
use dev;



CREATE TYPE dev.t_date (
    year int,
    month int,
    day int,
    hour int,
    minute int,
    time timestamp
);

CREATE TYPE dev.t_update (
    updated timestamp,
    blobtype text,
    detail blob
);

CREATE TABLE dev.bullet_notes (
    id text,
    notebook text,
    entry frozen<t_date>,
    status text,
    tags set<text>,
    task text,
    updates frozen<list<frozen<t_update>>>,
    PRIMARY KEY (id, notebook, entry)
);
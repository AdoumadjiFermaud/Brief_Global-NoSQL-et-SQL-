
CREATE KEYSPACE labo_db WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}  AND durable_writes = true;

CREATE TYPE labo_db.patients (
    nom text,
    prenom text,
    age int,
    poids text,
    genre text
);

CREATE TYPE labo_db.specialistes (
    nom text,
    prenom text,
    titre text,
    tel text
);

CREATE TYPE labo_db.unites (
    nom_labo text,
    nom_unite text,
    email text,
    adresse text
);

CREATE TABLE labo_db.examens (
    id timeuuid PRIMARY KEY,
    code text,
    date timestamp,
    nom text,
    type text,
    patients map<text, frozen<patients>>,
    unites map<text, frozen<unites>>
) WITH additional_write_policy = '99p'
    AND bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND cdc = false
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold': '32', 'min_threshold': '4'}
    AND compression = {'chunk_length_in_kb': '16', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND default_time_to_live = 0
    AND extensions = {}
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair = 'BLOCKING'
    AND speculative_retry = '99p';

CREATE KEYSPACE laboratoire_db WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}  AND durable_writes = true;

CREATE TYPE laboratoire_db.patients (
    nom text,
    prenom text,
    age text,
    poids text,
    genre text
);

CREATE TYPE laboratoire_db.specialistes (
    nom text,
    prenom text,
    titre text,
    tel text
);

CREATE TYPE laboratoire_db.unites (
    nom_labo text,
    nom_unite text,
    email text,
    adresse text
);

CREATE TABLE laboratoire_db.examens (
    id timeuuid PRIMARY KEY,
    code text,
    date timestamp,
    nom text,
    type text,
    patients map<text, frozen<patients>>,
    specialites map<text, frozen<specialistes>>,
    unites map<text, frozen<unites>>
) WITH additional_write_policy = '99p'
    AND bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND cdc = false
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold': '32', 'min_threshold': '4'}
    AND compression = {'chunk_length_in_kb': '16', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND default_time_to_live = 0
    AND extensions = {}
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair = 'BLOCKING'
    AND speculative_retry = '99p';

CREATE KEYSPACE sante_db WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}  AND durable_writes = true;

CREATE TYPE sante_db.don_sangs (
    quantite_don text,
    lieu_don text,
    date_don timestamp
);

CREATE TYPE sante_db.donneurs (
    nom text,
    prenom text,
    adresse text,
    sexe text,
    groupe_sanguin text,
    rhesus text
);

CREATE TYPE sante_db.patients (
    nom text,
    prenom text,
    adresse text,
    sexe text
);

CREATE TYPE sante_db.techniciens (
    matricule text,
    nom text,
    prenom text,
    fonction text
);

CREATE TABLE sante_db.tests (
    id timeuuid PRIMARY KEY,
    code text,
    date_test timestamp,
    nom text,
    resultat text,
    type text,
    don_sangs map<text, frozen<don_sangs>>,
    donneurs map<text, frozen<donneurs>>,
    patients map<text, frozen<patients>>,
    techniciens map<text, frozen<techniciens>>
) WITH additional_write_policy = '99p'
    AND bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND cdc = false
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold': '32', 'min_threshold': '4'}
    AND compression = {'chunk_length_in_kb': '16', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND default_time_to_live = 0
    AND extensions = {}
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair = 'BLOCKING'
    AND speculative_retry = '99p';

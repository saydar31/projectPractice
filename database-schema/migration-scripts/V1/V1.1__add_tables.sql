create table app_user(
	id bigint primary key,
	email varchar(255) not null unique,
	phone varchar(255),
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	middle_name varchar(255),
	password varchar(255) not null
);

create sequence app_user_id;

create table request_status(
    id bigint primary key,
    name varchar(127) not null unique
);

insert into request_status(id, name)
select 1, 'CREATED'
union all
select 2, 'IN_PROGRESS'
union all
select 3, 'DECLINED'
union all
select 4, 'FINISHED'
union all
select 5, 'VERIFIED';

create table request(
    id bigint primary key,
    owner_id bigint references app_user,
    name varchar(255) not null,
    message text not null,
    departure varchar(255) not null,
    destination varchar(255) not null,
    total_weight numeric,
    description text,
    feedback text
);

create sequence request_id;
create index request_owner_id_idx on request(owner_id);

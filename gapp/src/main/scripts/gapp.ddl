
    create table Application (
        id int4 not null,
        CIN int4 not null,
        birth_date varchar(255),
        citizenship varchar(255),
        date timestamp,
        file varchar(255),
        first_name varchar(255),
        gender varchar(255),
        gpa float8 not null,
        gre int4 not null,
        last_name varchar(255),
        phone_number int8 not null,
        saveorsubmit boolean not null,
        term_name varchar(255),
        app_status_id int4,
        department_id int4,
        members_id int4,
        program_id int4,
        primary key (id)
    );

    create table Application_Status (
        id int4 not null,
        App_status varchar(255),
        primary key (id)
    );

    create table Degree_of_University (
        id int4 not null,
        end_year int4 not null,
        major varchar(255),
        name_of_college varchar(255),
        name_of_degree varchar(255),
        starting_year int4 not null,
        app_id int4,
        primary key (id)
    );

    create table Department (
        id int4 not null,
        department_name varchar(255),
        primary key (id)
    );

    create table Members (
        id int4 not null,
        email varchar(255),
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        user_id int4,
        primary key (id)
    );

    create table OtherField (
        id int4 not null,
        namefield varchar(255),
        required boolean,
        typefield varchar(255),
        department_id int4,
        otherFieldValue_id int4,
        primary key (id)
    );

    create table OtherFieldValue (
        id int4 not null,
        othervalue varchar(255),
        primary key (id)
    );

    create table Program (
        id int4 not null,
        program_name varchar(255),
        dept_id int4,
        primary key (id)
    );

    create table Users (
        id int4 not null,
        user_type varchar(255),
        primary key (id)
    );

    alter table Application 
        add constraint FK_p8lxcc5d7yscap24ry25tsd93 
        foreign key (app_status_id) 
        references Application_Status;

    alter table Application 
        add constraint FK_beegan7bs6ajeouxep4mhhjrt 
        foreign key (department_id) 
        references Department;

    alter table Application 
        add constraint FK_oo8illuwme555etudrw5516t5 
        foreign key (members_id) 
        references Members;

    alter table Application 
        add constraint FK_43k5qkwy2wjh8b6sen99nhrt8 
        foreign key (program_id) 
        references Program;

    alter table Degree_of_University 
        add constraint FK_es0fjqhpwfyuneno0h2pxvcvi 
        foreign key (app_id) 
        references Application;

    alter table Members 
        add constraint FK_lt265vnehs4f12g84ad8hkdrq 
        foreign key (user_id) 
        references Users;

    alter table OtherField 
        add constraint FK_ittvocgxnd4rco3ba4i3imwt6 
        foreign key (department_id) 
        references Department;

    alter table OtherField 
        add constraint FK_4yeekffywwvrji9vq7hum4pt5 
        foreign key (otherFieldValue_id) 
        references OtherFieldValue;

    alter table Program 
        add constraint FK_die95oksx81frt5dypo1o1tyr 
        foreign key (dept_id) 
        references Department;

    create sequence hibernate_sequence;

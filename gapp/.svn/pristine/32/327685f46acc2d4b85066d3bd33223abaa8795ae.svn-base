
   
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

    
    create sequence hibernate_sequence start 200;
   
INSERT INTO users VALUES (1, 'admin');
INSERT INTO users VALUES (2, 'staff');
INSERT INTO users VALUES (3, 'student');





INSERT INTO members VALUES (1, 'admin@localhost.localdomain', 'z', 'p', 'abcd', 1);
INSERT INTO members VALUES (2, 'staff1@localhost.localdomain', 's', 'k', 'abcd',  2);
INSERT INTO members VALUES (3, 'staff2@localhost.localdomain', 'p', 'd', 'abcd',  2);
INSERT INTO members VALUES (4, 'student1@localhost.localdomain', 'p', 'p', 'abcd', 3);
INSERT INTO members VALUES (5, 'student2@localhost.localdomain', 'd', 'p', 'abcd', 3);




INSERT INTO application_status VALUES (1, 'New');
INSERT INTO application_status VALUES (2, 'Pending Review');
INSERT INTO application_status VALUES (3, 'Denied');
INSERT INTO application_status VALUES (4, 'Recommend Admit');
INSERT INTO application_status VALUES (5, 'Recommend Admit w/ Condition');
INSERT INTO application_status VALUES (6, 'Not Submitted');


INSERT INTO department VALUES (100, 'Accounting Department');
INSERT INTO department VALUES (104, 'Computer Science ');


INSERT INTO otherfield VALUES (103, 'GMAT', true, 'Int', 100, NULL);
INSERT INTO otherfield VALUES (107, 'GRE', true, 'Int', 104, NULL);


INSERT INTO program VALUES (101, 'MBA', 100);
INSERT INTO program VALUES (102, 'MS', 100);
INSERT INTO program VALUES (105, 'cs520', 104);
INSERT INTO program VALUES (106, 'cs512', 104);



INSERT INTO application VALUES (108, 321456987, '12/12/2016', 'xyz', '2016-03-07 22:26:28.615', 'D:\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\gapp\WEB-INF\files\weather api key_108.txt', 'xyz', 'Male', 4, 301, 'xyz', 987456321, false, 'Winter 2017', 1, 100, 4, 102);
INSERT INTO application VALUES (111, 0, '', '', '2016-03-07 22:26:47.388', NULL, '', 'Male', 0, 0, '', 0, true, 'Spring 2016', 1, 104, 4, 105);
INSERT INTO application VALUES (112, 313321, '12/12/2012', 'yta', '2016-03-07 22:29:42.638', 'D:\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\gapp\WEB-INF\files\xyz_112.txt', 'yta', 'Male', 4, 330, 'yta', 312646464, false, 'Spring 2017', 1, 104, 5, 106);
INSERT INTO application VALUES (115, 0, '', '', '2016-03-07 22:29:54.834', NULL, '', 'Male', 0, 0, '', 0, true, 'Spring 2016', 1, 100, 5, 101);

--

INSERT INTO degree_of_university VALUES (110, 2008, 'bda', 'pql', 'M.E', 2005, 108);
INSERT INTO degree_of_university VALUES (113, 2016, 'lk', 'jbkjhn', 'B.E', 2012, 112);
INSERT INTO degree_of_university VALUES (114, 2016, 'jg', 'hbdc', 'M.E', 2015, 112);


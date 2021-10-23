alter table MemberInfo modify tel null;

insert into MemberInfo (memberCode, id, pw, name, tel, email, authorizeCode)
values (MEMBERINFO_SEQ.nextval, 'admin', '1234', '°ü¸®ÀÚ', '01071526215', 'ehwlfk2@gmail.com', 3);


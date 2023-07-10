--to know the details of table
desc HR_DEPARTMENT;

/*ddl--->create,alter,drop,truncate,rename,comment
dml--->insert,update,delete,select,merge,call,explain plan,lock teble
dcl--->grant,revoke
tcl--->commit,savepoint,rollback,set transaction/*

using insert into table 
code:insert into table_name values(&column1,&column2........,&column3);
the above code is used to insert multiple rows...*/

select s_id from hr_department 
order by s_id;

--the below is used to give deired number to s_num and can see the result jut by executing code.....
select s_id,agency from HR_DEPARTMENT where S_ID=&s_num;




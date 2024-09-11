/*------------------------------------------------------------------------------------
   Test of includesasnb macro                                                        

   Tests the includesasnb macro by Chris Hemedinger for a variety of scenarios.
   New tests will be added.

   Sundaresh Sankaran
   11SEP2024


-------------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------------
   This block executes the macro definition. Prior to running, ensure you have pulled the
   latest update of the macro from  
   https://raw.githubusercontent.com/sascommunities/sas-dummy-blog/master/includesasnb/includesasnb.sas

   You MAY directly refer the above URL, if you wish, but this may sometimes error out 
   due to access over internet and file read issues (ERROR: Encryption runtime execution error.),
   thus better to have a local copy alternative.

-------------------------------------------------------------------------------------*/

/* In case you have manually downloaded includesasnb.sas */
/* %include "&WORKSPACE_PATH./sasnb_test/includesasnb.sas"; */

/* or */

filename INCSAS "&WORKSPACE_PATH./sasnb_test/includesasnb.sas";

proc http
 method='GET'
 url="https://raw.githubusercontent.com/sascommunities/sas-dummy-blog/master/includesasnb/includesasnb.sas"
 out=incsas;
run;

%include INCSAS;


/* or */

/*
filename INCSAS URL "https://raw.githubusercontent.com/sascommunities/sas-dummy-blog/master/includesasnb/includesasnb.sas";
%include INCSAS;
*/;

/*------------------------------------------------------------------------------------
   The following blocks call the macro for different tests.
-------------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------------
   Test 1 (refer README) : run a SAS code snippet located within a SAS notebook.
-------------------------------------------------------------------------------------*/
%includesasnb(filepath = &WORKSPACE_PATH./sasnb_test/test_notebook_1.sasnb);

/*------------------------------------------------------------------------------------
   Test 2 (refer README) : Include a SAS notebook containing a macro and execute macro.
-------------------------------------------------------------------------------------*/
%includesasnb(filepath = &WORKSPACE_PATH./sasnb_test/test_notebook_2.sasnb);
%runcars;

/*------------------------------------------------------------------------------------
   Test 3 (refer README) : Include a SAS notebook containing a combination of macros 
   and standalone code.
-------------------------------------------------------------------------------------*/
%includesasnb(filepath = &WORKSPACE_PATH./sasnb_test/test_notebook_3.sasnb);
%freqcars;





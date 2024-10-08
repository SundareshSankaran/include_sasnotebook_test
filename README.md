# Test of SAS Notebook Inclusion macro

This repo provides an example to test a [recent macro](https://github.com/sascommunities/sas-dummy-blog/blob/master/includesasnb/includesasnb.sas) published by Chris Hemedinger.

## Tests

1. Given a SAS notebook ([test_notebook_1.sasnb](./test_notebook_1.sasnb)) containing a non-macro SAS code snippet, when the user executes a SAS program with an include statement referring the .sasnb file with defaults, then the SAS code contained in test_notebook.sasnb is executed.

2. Given a SAS notebook ([test_notebook_2.sasnb](./test_notebook_2.sasnb)) containing a SAS macro, when the user executes a SAS program with an include statement referring the .sasnb file with defaults and calls the contained macro, then the SAS macro contained in test_notebook.sasnb is executed.

3. Given a SAS notebook ([test_notebook_3.sasnb](./test_notebook_3.sasnb)) containing a combination of codes and SAS macros, when the user executes a SAS program with an include statement referring the .sasnb file with defaults and calls one of the contained macros, then the standalone SAS code and the called SAS macro executed in the order in which they are called.

4. Given a SAS notebook ([test_notebook_4.sasnb](./test_notebook_4.sasnb)) containing python code embedded within a proc python step, when the user executes a SAS program with an include statement referring the .sasnb file with defaults, then the python code is executed wrapped with proc python.


## Process

1. Pull the macro from the repo to your workstation. **Note:** due to an update to the [run_test.sas](./run_test.sas) program, this is now optional, but useful nevertheless.

```bash
wget -O ./includesasnb.sas https://raw.githubusercontent.com/sascommunities/sas-dummy-blog/master/includesasnb/includesasnb.sas
```

2. Create a SAS notebook with contents pertaining to any of the above tests.  Suggested naming convention: test_notebook_<test_number>.sasnb

3. Add tests of your own (contributions encouraged).  Please ensure you describe the test in section above.

4. Modify the notebook filepath and/or filepath locations in run_test.sas and run run_test.sas to execute the macro. 

## Contact
- [Chris Hemedinger](mailto:chris.hemedinger@sas.com) - original macro author
- [Sundaresh Sankaran](mailto:sundaresh.sankaran@sas.com) - tests


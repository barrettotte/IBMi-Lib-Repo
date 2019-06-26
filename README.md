# IBMi-Lib-Repo


A tool for exporting all members from a library via FTP to create a git repository directory structure.


This was made to make taking notes on learning the IBMi easier and to prototype some logic for an IBMi API I'm writing.


## Dependencies
* Python 3.7
  * progress
* IBMi with FTP enabled and user with correct authorities


## Example
* Example of my personal library, **BOLIB**, found in ```./out```.
* ```config.json``` file included as ```config.example.json```.


## Usage
* Generate library repo for existing configuration with credentials prompt```python IBMi-lib-repo.py -e barrett-test```
* Generate library repo for existing configuration with credentials passed```python IBMi-lib-repo.py -e barrett-test --creds MYUSER MYPASSWORD```
* Setup new configuration and generate library repo ```python IBMi-lib-repo.py -n```
* Show help info ```python IBMi-lib-repo.py -h```


## References
* QSYS2.generate_sql https://www.ibm.com/support/knowledgecenter/en/ssw_ibm_i_72/rzajq/rzajqprocgensql.htm
* https://stackoverflow.com/questions/24398044/downloading-a-lot-of-files-using-python
* https://www.ibm.com/support/knowledgecenter/ssw_ibm_i_72/sqlp/rbafypdf.pdf


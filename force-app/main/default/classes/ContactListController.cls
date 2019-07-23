/**
* @description A Contact Controller use to manage different data queries
 */
public with sharing class  ContactListController {
    	private String sortOrder = 'LastName';
        /** 
        * @description Get a list of Contact with a maximum 10 records
        * @return results
         */
     	public List<Contact> getContacts(){
             String query = 'SELECT Id, FirstName, LastName, Title, Email ' +
             'FROM Contact ' +
             'ORDER BY ' + sortOrder + ' ASC ' +
             'LIMIT 10';
             String v1 = query;
             List<Contact> results = Database.query(v1);
             return results;
     }

}
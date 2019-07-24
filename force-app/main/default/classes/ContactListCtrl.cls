/**
@author: Rabou Vong
@company: Cognizant
@description: ContactListController are producing different data output base on each method.
 */
public with sharing class ContactListCtrl {
    private String sortOrderByLastName = 'LastName';
    /** 
	@author: Rabou Vong
	@company: Cognizant
	@description: Get a list of Contact with a maximum 5 records
	@return results
	*/
    public List<Contact> getFiveLimitedContact() {
        String queryStirng;
        queryStirng = 'SELECT Id, FirstName, LastName, Title, Email ' +
            'FROM Contact ' +
            'ORDER BY ' + sortOrderByLastName + ' ASC ' +
            'LIMIT 5';
        List<Contact> results = new List<Contact>();
        if (queryStirng != null && queryStirng != '') {
            results = Database.query(queryStirng);
        }
        return results;
    }
}
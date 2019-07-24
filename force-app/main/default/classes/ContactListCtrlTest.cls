/**
@author: Rabou Vong
@company: Cognizant
@description : ContactListControllerTest containing all the test methods which intent to cover all the functionlities from the Controller class.
 */
@isTest
public class ContactListCtrlTest {
    /**
    @author: Rabou Vong
    @company: Cognizant
    @description : Data Mock up for testing with newly 5 contacts
     */
    @testSetup static void setup() {
        List<Contact> contacts = new List<Contact>();
        Integer numContacts = 5;
        for (Integer i = 0 ; i < numContacts ; i++ ) {
            contacts.add(new Contact(FirstName = 'FirstName'+i, LastName = 'LastName'+i));
        }
        insert contacts;
    }
    /**
    @author: Rabou Vong
    @company: Cognizant
    @description : getContactTest will check if the size of the list is corrected
     */
    @isTest static void unitTestgetFiveLimitedContact() {
        ContactListCtrl contacts = new ContactListCtrl();
        List<Contact> results = contacts.getFiveLimitedContact();
        System.assertEquals(results.size(), 5, 'assertContactSize'); 
    }
}
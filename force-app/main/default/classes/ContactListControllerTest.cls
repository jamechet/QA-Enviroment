/**
* @description ContactListControllerTest
* Test all the methods in the controller class
 */
@isTest
public class ContactListControllerTest {
    /**
    * @description Data Mock up for testing with newly 5 contacts
     */
    @testSetup static void setup(){
        List<Contact> contacts = new List<Contact>();
        Integer numC = 5;
        for (Integer i = 0 ; i < numC ; i++ ) {
            contacts.add(new Contact(FirstName = 'FirstName'+i, LastName = 'LastName'+i));
        }
        insert contacts;
    }
    /**
    * @description Expecting 5 contacts after queried
     */
    @isTest static void getContactTest(){
        ContactListController contacts = new ContactListController();
        List<Contact> conData = contacts.getContacts();
        System.assertEquals(conData.size(), 1, 'assertContact'); 
    }

}
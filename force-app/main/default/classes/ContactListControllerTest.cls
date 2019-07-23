@isTest
public class ContactListControllerTest {
    @testSetup static void setup(){
        List<Contact> contacts = new List<Contact>();
        Integer numC = 5;
        for (Integer i = 0 ; i < numC ; i++ ) {
            contacts.add(new Contact(FirstName = 'FirstName'+i, LastName = 'LastName'+i));
        }
        insert contacts;
    }
    @isTest static void getContactTest(){
        ContactListController contacts = new ContactListController();
        List<Contact> conData = contacts.getContacts();
        System.assertEquals(conData.size(), 5); 
    }

}
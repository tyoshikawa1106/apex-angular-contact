@isTest
private class AngularContactDaoTest {
    
    private static AngularContactDao dao = new AngularContactDao();
    private static User testAdminUser = new User(Id = UserInfo.getUserId());

    /**
     * 取引先責任者取得
     * 値なし
     */
    static testMethod void getContactsTest() {
        System.runAs(testAdminUser) {

            Test.startTest();

            List<Contact> results = dao.getContacts();

            Test.stopTest();

            System.assertEquals(results.isEmpty(), true);
        }
    }
}
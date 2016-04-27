@isTest
private class AngularContactControllerTest {
    
    private static User testAdminUser = new User(Id = UserInfo.getUserId());
    
    /**
     * コンストラクタ
     * 値なし
     */
    static testMethod void AngularContactControllerTest() {
        System.runAs(testAdminUser) {

            Test.startTest();

            AngularContactController cls = new AngularContactController();

            Test.stopTest();
        }
    }

    /**
     * 取引先責任者取得
     * 値なし
     */
    static testMethod void getContactsTest() {
        System.runAs(testAdminUser) {

            Test.startTest();

            List<Contact> results = AngularContactController.getContacts();

            Test.stopTest();

            System.assertEquals(results.isEmpty(), true);
        }
    }
}
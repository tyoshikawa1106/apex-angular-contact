public with sharing class AngularContactController {
    
    private static AngularContactDao dao = new AngularContactDao();

    /**
     * コンストラクタ
     */
    public AngularContactController() {
        
    }

    /**
     * 取引先責任者取得
     */
    @RemoteAction
    public static List<Contact> getContacts() {
        return dao.getContacts();
    }
}
public with sharing class AngularContactDao {
    
    /**
     * コンストラクタ
     */
    public AngularContactDao() {
        
    }
    
    /**
     * 取引先責任者取得
     */
    public List<Contact> getContacts() {
        return [
            SELECT
                 Id
                ,LastName
                ,FirstName
                ,Phone
                ,Email
            FROM
                Contact
            ORDER BY Name ASC
            LIMIT 10000
        ];
    }
}
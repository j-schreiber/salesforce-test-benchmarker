@isTest
public with sharing class TestMockFactory {
    private static final Integer PRODUCT_COUNT = 1;

    /**
     * Creates a generic mock from a static JSON file
     *
     * @param resourceName
     * @param apexType
     * @return  `Object`
     */
    public static Object createGenericMock(String resourceName, System.Type apexType) {
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = :resourceName LIMIT 1];
        return JSON.deserialize(sr.Body.toString(), apexType);
    }
}

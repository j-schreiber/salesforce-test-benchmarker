@isTest
public class TestMockFactory {
    public static Order makeMockOrder() {
        return (Order) createGenericMock('MockData_Order_WithLineItems', Order.class);
        // return new Order(Name = 'Test Order', EffectiveDate = System.today());
    }

    public static ServiceContract makeMockServiceContract() {
        return (ServiceContract) createGenericMock('MockData_ServiceContract_WithLineItems', ServiceContract.class);
        // return new ServiceContract(Name = 'Test Contract', StartDate = System.today());
    }

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

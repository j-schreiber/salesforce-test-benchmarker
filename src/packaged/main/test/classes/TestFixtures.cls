@isTest
public class TestFixtures {
    public static List<Account> InsertDefaultAccounts() {
        List<Account> accs = new List<Account>();
        accs.add(CreateAccount('Test GmbH 1', '1000'));
        accs.add(CreateAccount('Lieferanten Test GmbH 1', '1001'));
        accs.add(CreateAccount('Kunden Test AG 1', '1002'));
        insert accs;
        return accs;
    }

    public static List<Account> InsertFullOrderStructure(Id pricebookId) {
        return InsertFullOrderStructure(pricebookId, 3);
    }

    public static List<Account> InsertFullOrderStructure(Id pricebookId, Integer orderCount) {
        List<Account> customers = InsertDefaultAccounts();
        List<Order> orders = new List<Order>();
        for (Integer i = 0; i < orderCount; i++) {
            orders.add(CreateOrder('Test Order ' + i, customers[0].Id, pricebookId));
        }
        insert orders;
        if (pricebookId != null) {
            List<OrderItem> items = new List<OrderItem>();
            for (Order o : orders) {
                items.addAll(createOrderItems(o.Id, [SELECT Id, UnitPrice FROM PricebookEntry WHERE Pricebook2Id = :pricebookId]));
            }
            insert items;
        }
        return customers;
    }

    public static List<Account> InsertFullServiceContractStructure(Id pricebookId) {
        List<Account> customers = InsertDefaultAccounts();
        List<ServiceContract> contracts = new List<ServiceContract>();
        contracts.add(CreateServiceContract('Test Contract 1', customers[0].Id, pricebookId));
        contracts.add(CreateServiceContract('Test Contract 2', customers[0].Id, pricebookId));
        contracts.add(CreateServiceContract('Test Contract 3', customers[0].Id, pricebookId));
        insert contracts;
        if (pricebookId != null) {
            List<ContractLineItem> items = new List<ContractLineItem>();
            for (ServiceContract sc : contracts) {
                items.addAll(createContractLineItems(sc.Id, [SELECT Id, UnitPrice FROM PricebookEntry WHERE Pricebook2Id = :pricebookId]));
            }
            insert items;
        }
        return customers;
    }

    public static Pricebook2 InsertProductsWithCustomPrices(String pricebookName) {
        List<Product2> prods = InsertProductsWithStandardPrices();
        // return AddProductsToCustomPricebook(pricebookName, 120, prods);
        Pricebook2 pb = new Pricebook2(Id = Test.getStandardPricebookId());
        update pb;
        return pb;
    }

    public static Pricebook2 AddProductsToCustomPricebook(String pricebookName, Decimal unitPrice, List<Product2> products) {
        Pricebook2 customPricebook = CreatePricebook(pricebookName);
        insert customPricebook;
        List<PricebookEntry> prices = new List<PricebookEntry>();
        for (Product2 prod : products) {
            prices.add(new PricebookEntry(Pricebook2Id = customPricebook.Id, Product2Id = prod.Id, UnitPrice = unitPrice, IsActive = true));
        }
        insert prices;
        return customPricebook;
    }

    public static List<Product2> InsertProductsWithStandardPrices() {
        List<Product2> prods = CreateDefaultProducts();
        insert prods;
        InsertStandardPrices(prods);
        return prods;
    }

    public static List<Product2> CreateDefaultProducts() {
        List<Product2> prods = new List<Product2>();
        for (Integer i = 0; i < 100; i++) {
            String prodName = 'Test Base Product {0}';
            String prodCode = 'A-{0}';
            prods.add(
                CreateProduct(
                    String.format(prodName, new List<Object>{ i }),
                    String.format(prodCode, new List<Object>{ i }),
                    'Base Product',
                    'Each'
                )
            );
        }
        for (Integer i = 0; i < 100; i++) {
            String prodName = 'Test Subscription Product {0}';
            String prodCode = 'B-{0}';
            prods.add(
                CreateSubscriptionProduct(
                    String.format(prodName, new List<Object>{ i }),
                    String.format(prodCode, new List<Object>{ i }),
                    'Yearly',
                    '12 months'
                )
            );
        }
        return prods;
    }

    public static Account CreateAccount(String accountName, String accountNumber) {
        return new Account(
            Name = accountName,
            AccountNumber = accountNumber,
            BillingStreet = 'Karlstraße 1',
            BillingPostalCode = '86152',
            BillingCity = 'Augsburg',
            BillingCountryCode = 'DE'
        );
    }

    public static ServiceContract CreateServiceContract(String contractName, Id accountId, Id pricebookId) {
        return new ServiceContract(
            Name = contractName,
            StartDate = System.today(),
            Pricebook2Id = pricebookId,
            AccountId = accountId,
            BillingStreet = 'Straße 1',
            BillingPostalCode = '12345',
            BillingCity = 'Berlin',
            BillingCountryCode = 'DE',
            ShippingStreet = 'Straße 1',
            ShippingPostalCode = '12345',
            ShippingCity = 'Berlin',
            ShippingCountryCode = 'DE'
        );
    }

    public static Order CreateOrder(String orderName, Id accountId, Id pricebookId) {
        return new Order(
            Name = orderName,
            EffectiveDate = System.today(),
            Pricebook2Id = pricebookId,
            AccountId = accountId,
            Status = 'Draft',
            BillingStreet = 'Straße 1',
            BillingPostalCode = '12345',
            BillingCity = 'Berlin',
            BillingCountryCode = 'DE',
            ShippingStreet = 'Straße 1',
            ShippingPostalCode = '12345',
            ShippingCity = 'Berlin',
            ShippingCountryCode = 'DE'
        );
    }

    public static Pricebook2 CreatePricebook(String pricebookName) {
        return new Pricebook2(Name = pricebookName, IsActive = true);
    }

    public static Product2 CreateProduct(String productName, String productCode, String productType, String unit) {
        return new Product2(
            Name = productName,
            ExternalId = productCode,
            ProductCode = productCode,
            Family = productType,
            Type__c = productType,
            QuantityUnitOfMeasure = unit,
            IsActive = true
        );
    }

    public static Product2 CreateSubscriptionProduct(String productName, String productCode, String billingCycle, String terms) {
        Product2 prod = CreateProduct(productName, productCode, 'Subscription', null);
        prod.BillingCycle__c = billingCycle;
        prod.AutomaticRenewal__c = true;
        prod.MinimumContractTerm__c = terms;
        prod.RenewalTerm__c = 12;
        prod.QuantityUnitOfMeasure = billingCycle == 'Yearly' ? 'per Year' : 'per Month';
        prod.LineItemDateValidationMode__c = billingCycle == 'Yearly' ? 'Full Month' : 'Any Day';
        prod.BillingMode__c = 'Advance';
        prod.TerminationPeriod__c = '3 months';
        return prod;
    }

    public static Product2 CreateSubscriptionProduct(
        String productName,
        String productCode,
        String billingCycle,
        String terms,
        Boolean automaticRenewal
    ) {
        Product2 prod = CreateSubscriptionProduct(productName, productCode, billingCycle, terms);
        prod.AutomaticRenewal__c = automaticRenewal;
        prod.RenewalTerm__c = automaticRenewal ? 12 : null;
        return prod;
    }

    private static List<OrderItem> createOrderItems(Id orderId, List<PricebookEntry> pricebookEntries) {
        List<OrderItem> orderItems = new List<OrderItem>();
        for (PricebookEntry pbe : pricebookEntries) {
            orderItems.add(new OrderItem(OrderId = orderId, PricebookEntryId = pbe.Id, Quantity = 3, UnitPrice = pbe.UnitPrice));
        }
        return orderItems;
    }

    private static List<ContractLineItem> createContractLineItems(Id contractId, List<PricebookEntry> pricebookEntries) {
        List<ContractLineItem> clis = new List<ContractLineItem>();
        for (PricebookEntry pbe : pricebookEntries) {
            clis.add(
                new ContractLineItem(ServiceContractId = contractId, PricebookEntryId = pbe.Id, Quantity = 5, UnitPrice = pbe.UnitPrice)
            );
        }
        return clis;
    }

    private static List<PricebookEntry> InsertStandardPrices(List<Product2> products) {
        List<PricebookEntry> prices = new List<PricebookEntry>();
        for (Product2 prod : products) {
            prices.add(
                new PricebookEntry(Pricebook2Id = Test.getStandardPricebookId(), Product2Id = prod.Id, UnitPrice = 100, IsActive = true)
            );
        }
        insert prices;
        return prices;
    }
}

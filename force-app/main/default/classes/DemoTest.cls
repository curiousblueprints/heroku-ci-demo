@isTest
public with sharing class DemoTest {
    @isTest
    static void DemoTest() {
        Demo demo = new Demo();
        system.assertNotEquals(null, demo, 'Demo should not be null.');
    }
}

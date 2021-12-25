trigger onContractLineItem on ContractLineItem(before delete) {
    for (ContractLineItem cli : Trigger.old) {
        if (cli.StartDate != null) {
            cli.addError('Cannot delete line item with start date');
        }
    }
}

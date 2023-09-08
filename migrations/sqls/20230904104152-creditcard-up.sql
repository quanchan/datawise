CREATE TABLE
    if not exists creditcard (
        id SERIAL PRIMARY KEY,
        card_type VARCHAR(255) NOT NULL,
        card_num VARCHAR(19) NOT NULL,
        entity_meta_id int not null,
        constraint fk_entity_meta_id foreign key (entity_meta_id) references entity_meta (id) on delete cascade
    );

insert into
    entity_meta (
        id,
        display_name,
        description,
        table_name,
        standalone,
        custom
    )
values
    (5, 'CreditCard', '', 'creditcard', false, false);

insert into
    column_meta (
        display_name,
        description,
        example,
        column_name,
        data_type,
        gen_opts_name,
        entity_meta_id
    )
values
    (
        'Card Type',
        'Type of the Credit Card',
        'Visa, MasterCard, American Express',
        'card_type',
        'varchar.255',
        'entityVarchar',
        5
    ),
    (
        'Card Number',
        'Credit Card Number',
        '1234-5678-9012-3456',
        'card_num',
        'varchar.19',
        'entityVarchar',
        5
    );

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4123-5678-9321-4567', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5291-6718-1092-3471', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3451-6729-0129-3478', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6011-6718-9021-3412', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4129-5071-9326-4590', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4829-5102-9325-4591', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5491-6711-1093-3421', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4825-5720-9327-4511', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4128-5175-9321-4522', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3457-6721-0128-3473', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6014-6710-9023-3452', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5497-6714-1033-3491', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4821-5701-9322-4599', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3453-6725-0198-3484', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4823-5128-9324-4593', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6012-6719-9025-3415', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4120-5178-9329-4529', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5493-6712-1098-3428', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3458-6726-0121-3479', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4826-5109-9323-4596', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6013-6717-9024-3417', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4827-5110-9328-4597', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5494-6713-1097-3429', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3459-6727-0120-3470', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4820-5111-9320-4598', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6015-6716-9029-3419', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5495-6715-1096-3420', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4822-5112-9326-4592', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3450-6728-0127-3472', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6016-6711-9028-3411', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4121-5179-9325-4521', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5496-6710-1095-3423', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3452-6724-0126-3475', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4824-5113-9322-4594', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4716-2210-9383-4951', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5138-6119-1390-3581', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4718-2205-9387-4916', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5135-6120-1395-3582', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6013-7717-9024-3467', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4719-2219-9385-4953', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5133-6117-1393-3585', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3764-1234-5678-9101', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6011-7719-9021-3469', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4710-2218-9384-4954', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5134-6116-1392-3586', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6012-7720-9022-3460', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4711-2217-9386-4955', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5137-6115-1391-3587', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3765-1235-5679-9102', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6015-7711-9025-3461', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4712-2216-9388-4956', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5130-6114-1394-3588', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3766-1236-5670-9103', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6014-7712-9026-3462', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4713-2215-9389-4957', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5131-6113-1397-3589', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3767-1237-5671-9104', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6017-7713-9027-3463', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4714-2214-9380-4958', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5132-6112-1396-3580', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3768-1238-5672-9105', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6018-7714-9028-3464', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4715-2213-9381-4959', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5136-6111-1399-3583', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3769-1239-5673-9106', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6019-7715-9029-3465', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4717-2212-9382-4950', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5139-6110-1398-3584', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4825-2320-9490-5060', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5148-6129-1400-3591', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4828-2305-9497-5016', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5145-6120-1405-3592', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6023-7727-9034-3477', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4829-2309-9495-5063', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5143-6127-1403-3595', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3774-1244-5688-9111', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6021-7729-9031-3479', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4820-2308-9494-5064', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5144-6126-1402-3596', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6022-7730-9032-3470', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4821-2307-9496-5065', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5147-6125-1401-3597', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3775-1245-5689-9112', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6025-7721-9035-3471', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4822-2306-9498-5066', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5140-6124-1404-3598', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3776-1246-5680-9113', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6024-7722-9036-3472', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4823-2305-9499-5067', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5141-6123-1407-3599', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3777-1247-5681-9114', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6027-7723-9037-3473', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4824-2304-9490-5068', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5142-6122-1406-3590', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3778-1248-5682-9115', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6028-7724-9038-3474', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4826-2303-9491-5069', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5146-6121-1409-3581', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3779-1249-5683-9116', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6029-7725-9039-3475', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4827-2310-9492-5070', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5149-6130-1410-3582', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6030-7726-9040-3476', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4830-2300-9493-5071', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5150-6131-1411-3583', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3780-1250-5684-9117', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6031-7728-9041-3478', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4831-2302-9495-5073', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5152-6133-1413-3585', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('American Express', '3781-1251-5685-9118', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Discover', '6032-7720-9042-3480', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('Visa', '4833-2301-9496-5074', 5);

insert into
    creditcard (card_type, card_num, entity_meta_id)
values
    ('MasterCard', '5153-6134-1414-3586', 5);
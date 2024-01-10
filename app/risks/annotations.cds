using RiskService as service from '../../srv/risk-service';
using from '../../srv/risks-service-ui';



annotate service.Risks with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : supplier_ID,
    },
    UI.FieldGroup #Main : {
        Data : [
            {
                $Type : 'UI.DataField',
                Value : miti_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : prio,
                Criticality : criticality,
            },
            {
                $Type : 'UI.DataField',
                Value : impact,
                Criticality : criticality,
            },
            {
                $Type : 'UI.DataField',
                Value : supplier_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.isBlocked,
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : '@Communication.Contact#contact',
                Label : 'Contact Name',
            },
        ],
    }
);

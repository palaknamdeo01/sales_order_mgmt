using CatalogService as service from '../../srv/catalog-service';
annotate service.OrderOverview with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'orderNo',
                Value : orderNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'orderDate',
                Value : orderDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'totalAmount',
                Value : totalAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerName',
                Value : customerName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'orderNo',
            Value : orderNo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'orderDate',
            Value : orderDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'status',
            Value : status,
        },
        {
            $Type : 'UI.DataField',
            Label : 'totalAmount',
            Value : totalAmount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customerName',
            Value : customerName,
        },
    ],
);


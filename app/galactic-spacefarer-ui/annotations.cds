using galactic.spacefarer as Spacefarer from '../../db/data-model';


annotate galactic.spacefarer.Spacefarers with @(
    UI.LineItem : [
        { $Type : 'UI.DataField', Value : name },
        { $Type : 'UI.DataField', Value : spacesuitColor },
        { $Type : 'UI.DataField', Value : stardustCollection },
    ]
);

annotate galactic.spacefarer.Spacefarers with @(
    UI.FieldGroup #GeneralInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Value : name, Label : 'Name' },
            { $Type : 'UI.DataField', Value : originPlanet, Label : 'Origin Planet' },
            { $Type : 'UI.DataField', Value : spacesuitColor, Label : 'Spacesuit Color' },
            { $Type : 'UI.DataField', Value : stardustCollection, Label : 'Stardust Collected' },
            { $Type : 'UI.DataField', Value : wormholeNavigationSkill, Label : 'Wormhole Navigation Skill' },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneralFacet',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneralInfo',
        },
    ]
);

annotate galactic.spacefarer.Spacefarers with @(
    UI.SelectionFields : [
        name,
        originPlanet,
    ]
);

annotate galactic.spacefarer.Spacefarers with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Organizational Info',
            ID : 'OrgDetails',
            Target : '@UI.FieldGroup#OrgInfo',
        },
    ],
    UI.FieldGroup #OrgInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Value : department.name, Label : 'Department' },
            { $Type : 'UI.DataField', Value : department.description },
            { $Type : 'UI.DataField', Value : position.title, Label : 'Position Title' },
            { $Type : 'UI.DataField', Value : position.level },
        ],
    }
);

annotate galactic.spacefarer.Spacefarers with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>Spacefarer}',
        TypeNamePlural : '{i18n>Spacefarers}',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
    }
);
sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'galacticspacefarerui/test/integration/FirstJourney',
		'galacticspacefarerui/test/integration/pages/SpacefarersList',
		'galacticspacefarerui/test/integration/pages/SpacefarersObjectPage'
    ],
    function(JourneyRunner, opaJourney, SpacefarersList, SpacefarersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('galacticspacefarerui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSpacefarersList: SpacefarersList,
					onTheSpacefarersObjectPage: SpacefarersObjectPage
                }
            },
            opaJourney.run
        );
    }
);
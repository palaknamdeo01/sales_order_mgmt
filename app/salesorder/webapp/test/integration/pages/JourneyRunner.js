sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"salesorder/salesorder/test/integration/pages/OrderOverviewList.gen",
	"salesorder/salesorder/test/integration/pages/OrderOverviewObjectPage.gen"
], function (JourneyRunner, OrderOverviewListGenerated, OrderOverviewObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('salesorder/salesorder') + '/test/flp.html#app-preview',
        pages: {
			onTheOrderOverviewListGenerated: OrderOverviewListGenerated,
			onTheOrderOverviewObjectPageGenerated: OrderOverviewObjectPageGenerated
        },
        async: true
    });

    return runner;
});


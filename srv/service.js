const cds = require('@sap/cds');

module.exports = cds.service.impl(function () {
  const { Spacefarers } = this.entities;

  console.info('🚨 Service implementation for Spacefarers loaded.');

  function validateAttributes({ stardustCollection, wormholeNavigationSkill }) {
    if (stardustCollection < 0 || wormholeNavigationSkill < 0) {
      throw new cds.error('Stardust and Wormhole Navigation Skill must be non-negative.', {
        code: 'INVALID_ATTRIBUTES',
        status: 400,
      });
    }
  }

  function applyCreationBonuses(data) {
    data.stardustCollection += 10;
    data.wormholeNavigationSkill += 1;
    console.log('Cosmic enhancement applied before creation!');
  }

  // @Before CREATE handler
  this.before('CREATE', Spacefarers, (req) => {
    validateAttributes(req.data);
    applyCreationBonuses(req.data);
  });

  // @After CREATE handler
  this.after('CREATE', Spacefarers, (data) => {
    const name = data.name ?? 'Unknown Spacefarer';
    const planet = data.originPlanet ?? 'Unknown Planet';

    console.info(`Cosmic Notification: Welcome ${name} from ${planet}! Your galactic adventure has begun.`);
  });
});
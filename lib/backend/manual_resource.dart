enum ManualResource {
  none,
  preperation,
  general,
  doubles,
  jail,
  propertiesRentsAndConstruction,
}

const manualUrl = 'https://jeroen-meijer.github.io/gridup_server/manual.html';

const resourceUrls = {
  ManualResource.none: '',
  ManualResource.preperation: '#preperation',
  ManualResource.general: '#general',
  ManualResource.doubles: '#doubles',
  ManualResource.jail: '#jail',
  ManualResource.propertiesRentsAndConstruction: '#properties-rents-and-construction',
};

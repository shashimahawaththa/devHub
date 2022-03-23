public with sharing class ParkLocator {
    public ParkLocator() {

        country('Germany');
    }

    public void country(String country) {
        parksServices.ParksImplPort parkService = new parksServices.ParksImplPort();
        String[] parkList = parkService.byCountry(country);
        system.debug('parkList >>' + parkList);
    }


}

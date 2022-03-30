import { LightningElement } from 'lwc';

export default class GetMyIp extends LightningElement {
    myIp;

    getIP() {
        const calloutURI = 'https://api.ipify.org/?format=json';

        fetch(calloutURI, {
            method: "GET"
        }).then((response) => response.json())
        .then(
            repos => { 
                console.log("This is the row response Json:- " + repos)
                this.myIp = repos.ip;
                console.log("This is my Ip Address:- " + this.myIp);
            });
    }
}
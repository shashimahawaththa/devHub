<aura:application extends="force:slds">
    <aura:dependency resource="markup://force:*" type="EVENT"/>
   <!--Info - extends="force:slds"
   attribute if the application needs to use SLDS style, it requires to define extends attribute.-->
   <!-- Unlike component event there is no hirachey to address hence including all componet inside app-->   
    <c:SFDX_Appli_Event_Handler/>
    <c:SFDX_Appli_Event_Notifier/>
</aura:application>
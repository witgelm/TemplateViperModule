<?xml version="1.0"?>
<globals>
    <global id="useSupport" type="boolean" value="${(minApiLevel lt 11)?string}" />
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>"/>
    <global id="manifestOut" value="${manifestDir}" />

    <global id="viewOutSource" value="${moduleName}/view"/>
    <global id="viewOutPackage" value="${moduleName}.view"/>
    <global id="viewClass" value="${moduleName?cap_first}View"/>
    <global id="viewProtocol" value="${moduleName?cap_first}ViewProtocol"/>

    <global id="presenterOutSource" value="${moduleName}/presenter"/>
    <global id="presenterOutPackage" value="${moduleName}.presenter"/>
    <global id="presenterClass" value="${moduleName?cap_first}Presenter"/>
    <global id="presenterProtocol" value="${moduleName?cap_first}PresenterProtocol"/>

    <global id="routerOutSource" value="${moduleName}/router"/>
    <global id="routerOutPackage" value="${moduleName}.router"/>
    <global id="routerClass" value="${moduleName?cap_first}Router"/>
    <global id="routerProtocol" value="${moduleName?cap_first}RouterProtocol"/>

    <global id="interactorOutSource" value="${moduleName}/interactor"/>
    <global id="interactorOutPackage" value="${moduleName}.interactor"/>
    <global id="interactorClass" value="${moduleName?cap_first}Interactor"/>
    <global id="interactorProtocol" value="${moduleName?cap_first}InteractorProtocol"/>

    <global/>

</globals>

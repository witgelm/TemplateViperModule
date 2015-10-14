<?xml version="1.0"?>
<recipe>

    <instantiate from="root/src/app_package/view/ViewComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewOutSource}/${viewClass}.kt" />

    <instantiate from="root/src/app_package/view/ViewComponentProtocol.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewOutSource}/${viewProtocol}.kt" />

    <instantiate from="root/src/app_package/presenter/PresenterComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterOutSource}/${presenterClass}.kt" />

    <instantiate from="root/src/app_package/presenter/PresenterComponentProtocol.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterOutSource}/${presenterProtocol}.kt" />

    <#if isRouter>
    <instantiate from="root/src/app_package/router/RouterComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${routerOutSource}/${routerClass}.kt" />

    <instantiate from="root/src/app_package/router/RouterComponentProtocol.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${routerOutSource}/${routerProtocol}.kt" />
    </#if>

    <#if isInteractor>
    <instantiate from="root/src/app_package/interactor/InteractorComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${interactorOutSource}/${interactorClass}.kt" />

    <instantiate from="root/src/app_package/interactor/InteractorComponentProtocol.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${interactorOutSource}/${interactorProtocol}.kt" />
    </#if>

    <#if includeLayout>
        <instantiate from="root/res/layout/view_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/view_${classToResource(moduleName)}.xml" />
    </#if>

    <#if false>
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    </#if>
</recipe>

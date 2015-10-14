package ${packageName}.${viewOutPackage}

import android.content.Context
<#if parentView == "fragment">
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
<#else>
import android.support.v7.app.AppCompatActivity
</#if>
import android.os.Bundle

import ${packageName}.R
import ${packageName}.${presenterOutPackage}.${presenterClass}
import ${packageName}.${presenterOutPackage}.${presenterProtocol}


class ${viewClass}:<#if parentView == "fragment">Fragment()<#else>AppCompatActivity()</#if>, ${viewProtocol} {

	lateinit var presenter:${presenterProtocol}

    <#if parentView == "fragment">
    override fun onCreateView(inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        var view = inflater?.inflate(R.layout.view_${classToResource(moduleName)},container,false)
        presenter = ${presenterClass}(this)
        return view
    }
    <#else>
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.view_${classToResource(moduleName)})
        presenter = ${presenterClass}(this)
    }
    </#if>

	override fun getSelf(): <#if parentView == "fragment">Fragment<#else>AppCompatActivity</#if> {
        return this
    }

    override fun getAppContext(): Context {
        return getAppContext()
    }
}

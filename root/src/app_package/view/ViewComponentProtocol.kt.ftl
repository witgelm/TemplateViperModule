package ${packageName}.${viewOutPackage}

import android.content.Context
<#if parentView == "fragment">
import android.support.v4.app.Fragment
<#else>
import android.support.v7.app.AppCompatActivity
</#if>

interface ${viewProtocol}{

	fun getSelf(): <#if parentView == "fragment">Fragment<#else>AppCompatActivity</#if>

	fun getAppContext(): Context
}

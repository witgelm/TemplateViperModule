package ${packageName}.${presenterOutPackage}

import ${packageName}.${viewOutPackage}.${viewProtocol}
import java.lang.ref.WeakReference

class ${presenterClass}(activity: ${viewProtocol}):${presenterProtocol}{

	private val activity: WeakReference<${viewProtocol}>

	init{
		this.activity = WeakReference(activity)
	}
}

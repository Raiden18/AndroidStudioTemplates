package ${packageName}

import dagger.Component
import dagger.Module
import dagger.Provides
import javax.inject.Scope
import dagger.BindsInstance

@Scope
@Retention(AnnotationRetention.RUNTIME)
internal annotation class ${screenName}Scope

@${screenName}Scope
@Component(dependencies = [${parentComponentName}::class], modules = [${screenName}Module::class])
internal interface ${screenName}Component {
    fun inject(presenter: ${screenName}Presenter)
    @Component.Builder
    interface Builder {
        fun build(): ${screenName}Component
        fun parentComponent(parentComponent: ${parentComponentName}): Builder
    }
}

@Module
internal class ${screenName}Module {
  
}
package ${packageName}

import org.koin.android.viewmodel.dsl.viewModel
import org.koin.core.qualifier.named
import org.koin.dsl.module

//TODO: make first letter lowercase!
val ${screenName}Module = module {
    scope(named<${screenName}Fragment>()) {
        viewModel { ${screenName}ViewModel(get()) }
    }
}
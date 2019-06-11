package ${packageName}

import org.koin.android.scope.currentScope
import org.koin.android.viewmodel.ext.android.viewModel

class ${screenName}Fragment : BaseFragment<${screenName}ViewModel, /*Your generated databinding class type*/>() {
    override val viewModel: ${screenName}ViewModel by currentScope.viewModel(this)
    override val layoutId = R.layout.${layoutName}

    override fun onCreateView() {
        binding.viewModel = viewModel
    }
}
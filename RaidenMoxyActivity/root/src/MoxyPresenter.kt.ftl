package ${packageName}

import com.arellomobile.mvp.InjectViewState
import javax.inject.Inject

@InjectViewState
internal class ${screenName}Presenter : ${basePresenter}<${screenName}View>() {

	override fun onFirstViewAttach() {
    	super.onFirstViewAttach()
    }

    override fun attachView(view: ${screenName}View?) {
        super.attachView(view)
    }
}

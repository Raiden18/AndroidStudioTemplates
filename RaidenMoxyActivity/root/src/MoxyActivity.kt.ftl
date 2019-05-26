package ${packageName}

import android.app.AlertDialog
import android.os.Bundle
import android.view.View
import com.arellomobile.mvp.presenter.InjectPresenter
import kotlinx.android.synthetic.main.${layoutName}.view.* 

internal class ${screenName}Activity : ${baseScreenName}(), ${screenName}View {
    @InjectPresenter
    internal lateinit var presenter: ${screenName}Presenter

    override fun layoutId(): Int = R.layout.${layoutName}

    override fun onCreateComponent(parentComponent: ${parentComponentName}) {
        Dagger${screenName}Component.builder()
                .projectComponent(parentComponent)
                .build()
                .inject(presenter)
    }


     override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
         setClickListeners()
    }

    private fun setClickListeners() {
       
    }

    override fun showLoading(){

    }

    override fun showContent() {

    }

    override fun showEmpty() {
        
    }
}

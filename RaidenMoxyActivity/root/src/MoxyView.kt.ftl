package ${packageName}

import com.arellomobile.mvp.viewstate.strategy.AddToEndSingleStrategy
import com.arellomobile.mvp.viewstate.strategy.StateStrategyType
import com.arellomobile.mvp.viewstate.strategy.SingleStateStrategy
import com.ltst.app.base.mvp.moxy.MoxyView

@StateStrategyType(AddToEndSingleStrategy::class)
internal interface ${screenName}View : MoxyView {
	@StateStrategyType(SingleStateStrategy::class)
   	fun showLoading()

   	@StateStrategyType(SingleStateStrategy::class)
    fun showContent() 

    @StateStrategyType(SingleStateStrategy::class)
    fun showEmpty() 
}
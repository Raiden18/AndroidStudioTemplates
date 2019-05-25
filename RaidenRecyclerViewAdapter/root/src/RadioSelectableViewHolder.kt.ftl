package ${packageName}

import android.view.View
import android.view.ViewGroup
import kotlinx.android.synthetic.main.${layoutName}.view.* 

class ${adapterName}ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
    private val title = itemView.${layoutName}_title
    private val image = itemView.${layoutName}_checkbox

    fun bind(item: ${modelClassId}, onItemClick: (${modelClassId}) -> Unit) {
        itemView.setOnClickListener {
            onItemClick(item)
        }
        title.text = item.title
        image.visibility = if (item.isSelected) View.VISIBLE else View.INVISIBLE
    }
}
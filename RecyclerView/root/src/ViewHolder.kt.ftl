package ${packageName}

import android.view.View
import android.view.ViewGroup
import kotlinx.android.synthetic.main.${layoutName}.view.* 

class ${adapterName}ViewHolder(private val onItemClick: (${modelClassId}) -> Unit,
    itemView:View):RecyclerView.ViewHolder(itemView){
        
        fun bind(item :${modelClassId}){
            itemView.setOnClickListener{
                onItemClick(item)
            }
        }
    }
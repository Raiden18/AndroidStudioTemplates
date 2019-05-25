package ${packageName}

import android.view.LayoutInflater
import android.view.ViewGroup

class ${adapterName}Adapter(private val onItemClick: (${modelClassId}) -> Unit):RecyclerView.Adapter<${adapterName}ViewHolder>(){
    private val items = arrayListOf<${modelClassId}>()

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int):${adapterName}ViewHolder{
        val inflater = LayoutInflater.from(parent.context)
        val itemView = inflater.inflate(R.layout.${layoutName}, parent, false)
        return ${adapterName}ViewHolder(onItemClick, itemView)
    }
    
    override fun getItemCount() = items.size
    
    override fun onBindViewHolder(holder: ${adapterName}ViewHolder, position: Int){
        val item = items[position]
        holder.bind(item)
    }
    
    fun swapItems(items: Iterable<${modelClassId}>){
        this.items.clear()
        this.items.addAll(items)
        notifyDataSetChanged()
    }
}
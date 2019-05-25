package ${packageName}

import android.view.LayoutInflater
import android.view.ViewGroup

class ${adapterName}Adapter(private val onItemClick: (${modelClassId}) -> Unit) : RecyclerView.Adapter<${adapterName}ViewHolder>() {
    private val items = UiSelectableArrayList()

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${adapterName}ViewHolder {
        val inflater = LayoutInflater.from(parent.context)
        val itemView = inflater.inflate(R.layout.${layoutName}, parent, false)
        return ${adapterName}ViewHolder(itemView)
    }

    override fun onBindViewHolder(holder: ${adapterName}ViewHolder, position: Int) {
        val item = items[position]
        holder.bind(item) {
            onItemClick(it)
            items.setSelectedItem(position)
            updateItems()
        }
    }

    override fun getItemCount() = items.size

    fun swapItems(items: Iterable<${modelClassId}>) {
        this.items.clear()
        this.items.addAll(items)
        notifyDataSetChanged()
    }

    private fun updateItems(){
        notifyItemChanged(items.getOldSelectedPosition())
        notifyItemChanged(items.getNewSelectedPosition())
    }
}
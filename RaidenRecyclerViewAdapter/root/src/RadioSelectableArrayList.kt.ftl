package ${packageName}

class UiSelectableArrayList : ArrayList<${modelClassId}>() {
    private var oldSectedPosition: Int = -1
    private var newSectedPosition: Int = -1
    private var oldSectedItem: ${modelClassId}? = null
    private lateinit var newSelectedItem: ${modelClassId}

    fun setSelectedItem(position: Int) {
        setOldAndNewPositionsAndOldItem(position)
        toggleItems()
        saveOldItemAndPosition()
    }

 	fun getOldSelectedPosition(): Int = oldSectedPosition

    fun getNewSelectedPosition(): Int = newSectedPosition

    private fun setOldAndNewPositionsAndOldItem(position: Int) {
        newSectedPosition = position
        newSelectedItem = get(position)
    }

    private fun toggleItems() {
        if (oldSectedItem == null) {
            toggleItemAtFirstTime()
        } else {
            selectNewItemAndUnselectOld()
        }
    }

    private fun toggleItemAtFirstTime() {
        toggleNewItem()
    }

    private fun selectNewItemAndUnselectOld() {
        if (oldSectedPosition == newSectedPosition) {
            toggleTheSameItem()
        } else {
            selectOneItemAndUnselectAnotherOne()
        }
    }

    private fun toggleTheSameItem() {
        toggleOldItem()
    }

    private fun selectOneItemAndUnselectAnotherOne() {
        toggleOldItem()
        toggleNewItem()
    }

    private fun toggleNewItem() {
        newSelectedItem.isSelected = !newSelectedItem.isSelected
    }

    private fun toggleOldItem() {
        oldSectedItem!!.isSelected = !oldSectedItem!!.isSelected
    }

    private fun saveOldItemAndPosition() {
        oldSectedPosition = newSectedPosition
        oldSectedItem = newSelectedItem
    }
}
<?xml version="1.0" encoding="utf-8"?>
<FrameLayout
        xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:tools="http://schemas.android.com/tools"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal"
        android:foreground="?selectableItemBackground">

    <TextView
            android:id="@+id/${layoutName}_title"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_gravity="center_vertical"
            tools:text="123123123123"/>
    <ImageView
            android:id="@+id/${layoutName}_checkbox"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:src="@drawable/ic_launcher_background"
            android:layout_gravity="end"/>
</FrameLayout>
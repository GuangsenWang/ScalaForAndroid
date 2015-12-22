package com.wang.guangsen.scalaforandroid

import android.os.Bundle
import android.support.design.widget.{FloatingActionButton, Snackbar}
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.Toolbar
import android.view.{Menu, MenuItem, View}
import android.widget.TextView
import com.wang.guangsen.scalaforandroid.Helpers._

/**
  * Created by Guangsen on 15/12/22.
  */
class MainActivity extends AppCompatActivity {
  override def onCreate(savedInstanceState: Bundle): Unit = {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_main)

    val toolbar: Toolbar = findViewById(R.id.toolbar).asInstanceOf[Toolbar]
    setSupportActionBar(toolbar)

    val hello_world = findViewById(R.id.hello_world).asInstanceOf[TextView]
    val fab: FloatingActionButton = findViewById(R.id.fab).asInstanceOf[FloatingActionButton]
    hello_world.setText(new HelloJava().say())
    fab.setOnClickListener((v:View) =>
      Snackbar.make(v, "Replace with your own action", Snackbar.LENGTH_LONG).setAction("Action", null).show())
  }

  override def onCreateOptionsMenu(menu: Menu): Boolean = {
    getMenuInflater.inflate(R.menu.menu_main, menu)
    true
  }

  //test

  override def onOptionsItemSelected(item: MenuItem): Boolean = {
    val id: Int = item.getItemId
    if (id == R.id.action_settings) {
      return true
    }
    super.onOptionsItemSelected(item)
  }

}

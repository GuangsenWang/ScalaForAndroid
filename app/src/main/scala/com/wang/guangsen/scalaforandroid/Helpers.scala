package com.wang.guangsen.scalaforandroid

import android.view.View

/**
  * Created by Guangsen on 15/12/22.
  */
object Helpers {
  implicit def onClick(v: View => Unit):View.OnClickListener = new View.OnClickListener {
    def onClick(f: View): Unit = v(f)
  }
}

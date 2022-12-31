package org.lineageos.settings.touch

import android.content.Context
import android.util.Log
import org.lineageos.settings.utils.FileUtils

object TouchPollingRateUtils {
    private const val TAG = "TouchPollingRateUtils"
    const val NODE = "/sys/devices/virtual/touch/touch_dev/bump_sample_rate"
    fun restorePollingRateState(context: Context) {
        val sharedPref = context.getSharedPreferences(
            TouchPollingRateSettingsFragment.SHARED_PREFERENCE_POLLING_RATE,
            Context.MODE_PRIVATE
        )
        val highPollingRateState = sharedPref.getInt(TouchPollingRateSettingsFragment.SHARED_PREFERENCE_POLLING_RATE, 0)
        if (FileUtils.writeLine(NODE, highPollingRateState.toString())) {
            Log.d(TAG, "restorePollingRateState succeed")
        } else {
            Log.e(TAG, "Failed to write $NODE")
        }
    }
}

package org.lineageos.settings.touch

import android.content.Context
import android.os.Bundle
import android.util.Log
import android.view.MenuItem
import androidx.preference.PreferenceFragment
import androidx.preference.SwitchPreference
import org.lineageos.settings.R
import org.lineageos.settings.utils.FileUtils

class TouchPollingRateSettingsFragment :
    PreferenceFragment() {
    private var mHTPRPreference: SwitchPreference? = null
    override fun onCreatePreferences(savedInstanceState: Bundle?, rootKey: String?) {
        addPreferencesFromResource(R.xml.touch_polling_rate_settings)
        activity.actionBar!!.setDisplayHomeAsUpEnabled(true)
        mHTPRPreference = findPreference(HTPR_ENABLED_KEY) as SwitchPreference?
        mHTPRPreference?.setOnPreferenceChangeListener { _, newValue ->
            enableHighPollingRate(newValue as Int).apply {
                if (this) {
                    saveSharedPreference(newValue)
                }
            }
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            activity.onBackPressed()
            return true
        }
        return false
    }

    private fun enableHighPollingRate(value: Int): Boolean {
        if (!FileUtils.writeLine(TouchPollingRateUtils.NODE, value.toString())) {
            Log.e(TAG, "Write $value to node failed!")
            return false
        }
        return true
    }

    private fun saveSharedPreference(value: Int): Boolean {
        val preferences = activity.getSharedPreferences(SHARED_PREFERENCE_POLLING_RATE, Context.MODE_PRIVATE)
        val editor = preferences.edit()
        editor.putInt(SHARED_PREFERENCE_POLLING_RATE, value)
        editor.commit().apply {
            if (!this) {
                Log.e(TAG, "$SHARED_PREFERENCE_POLLING_RATE commit failed!")
                return false
            }
        }
        return true
    }

    companion object {
        private const val HTPR_ENABLED_KEY = "htpr_enable"
        private const val TAG = "TouchPollingRateSettingsFragment"
        const val SHARED_PREFERENCE_POLLING_RATE = "SHARED_PREFERENCE_POLLING_RATE"
    }
}

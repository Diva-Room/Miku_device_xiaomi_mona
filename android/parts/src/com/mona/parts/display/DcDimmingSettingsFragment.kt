package com.mona.parts.display

import android.content.Context
import android.os.Bundle
import android.util.Log
import androidx.preference.Preference
import androidx.preference.Preference.OnPreferenceChangeListener
import androidx.preference.PreferenceFragment
import androidx.preference.SwitchPreference

import com.android.internal.util.miku.FileUtils
import com.mona.parts.R

class DcDimmingSettingsFragment : PreferenceFragment() {
    private var mDcDimmingPreference: SwitchPreference? = null
    override fun onCreatePreferences(savedInstanceState: Bundle?, rootKey: String?) {
        addPreferencesFromResource(R.xml.dc_dimming_settings)
        mDcDimmingPreference = findPreference(DcUtils.DC_DIMMING_KEY) as SwitchPreference?

        mDcDimmingPreference?.apply { 
            if (!DcUtils.getDcStatus().equals(DcUtils.DC_NOT_SUPPORT)) {
                isEnabled = true
                setOnPreferenceChangeListener { preference, any ->
                    if (DcUtils.DC_DIMMING_KEY.equals(preference.key)) {
                        if (!DcUtils.setDcStatus(if (any as Boolean) DcUtils.DC_ON else DcUtils.DC_OFF)) {
                            Log.e(TAG, "Failed to set DC node!")
                        }
                    }
                    true
                }
            } else {
                isEnabled = false
            }
        }
    }

    companion object {
        private const val TAG = "DcDimmingSettingsFragment"
    }

}

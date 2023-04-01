/*
 * Copyright (C) 2021-2023 Miku UI
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.mona.parts

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.os.IBinder
import android.util.Log
import android.view.Display.HdrCapabilities
import android.view.SurfaceControl
import androidx.preference.PreferenceManager

import com.mona.parts.display.DcUtils

class BootCompletedReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (DEBUG) Log.d(TAG, "Received boot completed intent")

        val sharedPreference = PreferenceManager.getDefaultSharedPreferences(context)
        val dcDimmingEnabled = sharedPreference.getBoolean(DcUtils.DC_DIMMING_KEY, false)
        if (!DcUtils.setDcStatus(if (dcDimmingEnabled) DcUtils.DC_ON else DcUtils.DC_OFF)) {
                Log.e(TAG, "Failed to set DC node on boot!")
        }

        val displayToken: IBinder = SurfaceControl.getInternalDisplayToken()
        SurfaceControl.overrideHdrTypes(
            displayToken, intArrayOf(
                HdrCapabilities.HDR_TYPE_DOLBY_VISION, HdrCapabilities.HDR_TYPE_HDR10,
                HdrCapabilities.HDR_TYPE_HLG, HdrCapabilities.HDR_TYPE_HDR10_PLUS
            )
        )
    }

    companion object {
        private const val DEBUG = false
        private const val TAG = "MonaParts"
    }
}

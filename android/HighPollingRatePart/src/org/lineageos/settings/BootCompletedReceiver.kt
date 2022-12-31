/*
 * Copyright (C) 2022 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package org.lineageos.settings

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import org.lineageos.settings.touch.TouchPollingRateUtils

class BootCompletedReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        Log.d(TAG, "Boot completed! Prepare to restore settings...")
        TouchPollingRateUtils.restorePollingRateState(context)
    }

    companion object {
        private const val TAG = "MonaParts"
    }
}

package com.mona.parts.display

import android.util.Log

import com.android.internal.util.miku.FileUtils

class DcUtils {
    companion object {
        private const val TAG = "DcUtils"
        const val DC_DIMMING_KEY = "dc_dimming"
        const val DC_DIMMING_NODE = "/sys/devices/platform/soc/soc:qcom,dsi-display-primary/dimlayer_exposure"
        const val DC_ON = "1"
        const val DC_OFF = "0"
        const val DC_NOT_SUPPORT = "-1"

        fun getDcStatus(): String {
            FileUtils.fileExists(DC_DIMMING_NODE).apply {
                if (this) {
                    when (FileUtils.readOneLine(DC_DIMMING_NODE)) {
                        DC_ON -> return DC_ON
                        DC_OFF -> return DC_OFF
                    }
                } else {
                    Log.e(TAG, "Kernel do not support DC Dimming!")
                }
            }
            return DC_NOT_SUPPORT
        }

        fun setDcStatus(status: String): Boolean {
            return FileUtils.writeLine(DC_DIMMING_NODE, status)
        }
    }
}

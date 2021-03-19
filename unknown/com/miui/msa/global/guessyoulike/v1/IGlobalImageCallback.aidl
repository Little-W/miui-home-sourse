// GlobalImageCallback.aidl
package com.miui.msa.global.guessyoulike.v1;

import android.net.Uri;

interface IGlobalImageCallback {
    void onImageLoadSuccess(String url, in Uri iconUri);
    void onImageLoadFailed(String url);
}

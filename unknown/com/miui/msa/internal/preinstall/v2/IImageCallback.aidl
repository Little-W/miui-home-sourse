// ImageCallback.aidl
package com.miui.msa.internal.preinstall.v2;

import android.net.Uri;

interface IImageCallback {
    void onImageLoadSuccess(String url, in Uri iconUri);
    void onImageLoadFailed(String url);
}

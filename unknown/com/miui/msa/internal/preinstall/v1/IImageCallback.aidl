// ImageCallback.aidl
package com.miui.msa.internal.preinstall.v1;

import android.net.Uri;

interface IImageCallback {
    void onImageLoadSuccess(String url, in Uri iconUri);
    void onImageLoadFailed(String url);
}

.class public Lcom/market/sdk/utils/Client;
.super Ljava/lang/Object;
.source "Client.java"


# static fields
.field public static ANDROID_ID:Ljava/lang/String; = null

.field public static DISPLAY_DENSITY:I = 0x0

.field public static DISPLAY_HEIGHT:I = 0x0

.field public static DISPLAY_RESOLUTION:Ljava/lang/String; = null

.field public static DISPLAY_WIDTH:I = 0x0

.field public static FEATURE:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static GLES_VERSION:Ljava/lang/String; = null

.field public static GL_EXTENSION:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static LIBRARY:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static RELEASE:Ljava/lang/String; = null

.field public static SDK_VERSION:I = 0x0

.field public static SYSTEM_VERSION:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MarketSdkClient"

.field public static TOUCH_SCREEN:I = 0x0

.field public static final XIAOMI_SDK_VERSION_CODE:I = 0xb

.field private static mIsInited:Z

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/market/sdk/utils/Client;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireDeviceConfig(Landroid/content/Context;)V
    .locals 1

    const-string v0, "activity"

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 111
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    .line 112
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    sput v0, Lcom/market/sdk/utils/Client;->TOUCH_SCREEN:I

    .line 113
    invoke-virtual {p0}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/market/sdk/utils/Client;->GLES_VERSION:Ljava/lang/String;

    return-void
.end method

.method private static acquireFeature(Landroid/content/Context;)V
    .locals 5

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    .line 119
    sget-object v0, Lcom/market/sdk/utils/Client;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/market/sdk/utils/Client;->FEATURE:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 122
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 123
    iget-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    sget-object v4, Lcom/market/sdk/utils/Client;->FEATURE:Ljava/util/ArrayList;

    iget-object v3, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_1
    sget-object p0, Lcom/market/sdk/utils/Client;->FEATURE:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static acquireGLExtensions()V
    .locals 6

    .line 149
    invoke-static {}, Lcom/market/sdk/utils/Client;->getGLExtensions()Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/market/sdk/utils/Client;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/market/sdk/utils/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " "

    .line 153
    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 155
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    sget-object v5, Lcom/market/sdk/utils/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_1
    sget-object v0, Lcom/market/sdk/utils/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 161
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static acquireIdentity(Landroid/content/Context;)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/market/sdk/utils/Client;->ANDROID_ID:Ljava/lang/String;

    return-void
.end method

.method private static acquireLibrary(Landroid/content/Context;)V
    .locals 5

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object p0

    .line 135
    sget-object v0, Lcom/market/sdk/utils/Client;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/market/sdk/utils/Client;->LIBRARY:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 138
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 139
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    sget-object v4, Lcom/market/sdk/utils/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    sget-object p0, Lcom/market/sdk/utils/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static acquireScreenAttr(Landroid/content/Context;)V
    .locals 2

    .line 100
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 101
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 102
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/market/sdk/utils/Client;->DISPLAY_HEIGHT:I

    .line 104
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/market/sdk/utils/Client;->DISPLAY_WIDTH:I

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/market/sdk/utils/Client;->DISPLAY_HEIGHT:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/market/sdk/utils/Client;->DISPLAY_WIDTH:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/market/sdk/utils/Client;->DISPLAY_RESOLUTION:Ljava/lang/String;

    .line 106
    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/market/sdk/utils/Client;->DISPLAY_DENSITY:I

    return-void
.end method

.method private static acquireSystemInfo(Landroid/content/Context;)V
    .locals 0

    .line 165
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object p0, Lcom/market/sdk/utils/Client;->RELEASE:Ljava/lang/String;

    .line 166
    sget-object p0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object p0, Lcom/market/sdk/utils/Client;->SYSTEM_VERSION:Ljava/lang/String;

    .line 167
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput p0, Lcom/market/sdk/utils/Client;->SDK_VERSION:I

    return-void
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuArch()Ljava/lang/String;
    .locals 3

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-static {}, Lcom/market/sdk/utils/Client;->isLaterThanLollipop()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.product.cpu.abilist"

    const-string v2, ""

    .line 229
    invoke-static {v1, v2}, Lcom/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, ","

    .line 238
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .line 215
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceType()I
    .locals 1

    .line 219
    invoke-static {}, Lcom/market/sdk/utils/Client;->isTablet()Z

    move-result v0

    return v0
.end method

.method private static getGLExtensions()Ljava/lang/String;
    .locals 11

    .line 253
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 254
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    .line 255
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x0

    if-ne v7, v1, :cond_0

    return-object v8

    :cond_0
    const/4 v1, 0x2

    .line 259
    new-array v1, v1, [I

    .line 260
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v8

    :cond_1
    const/4 v1, 0x1

    .line 263
    new-array v9, v1, [I

    .line 264
    new-array v10, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v1, 0xb

    .line 265
    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, v7

    move-object v4, v10

    move-object v6, v9

    .line 274
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v8

    :cond_2
    const/4 v1, 0x0

    .line 276
    aget v2, v9, v1

    if-lez v2, :cond_3

    .line 277
    aget-object v1, v10, v1

    goto :goto_0

    :cond_3
    move-object v1, v8

    .line 280
    :goto_0
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v7, v1, v2, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    const/4 v3, 0x5

    .line 282
    new-array v3, v3, [I

    fill-array-data v3, :array_1

    .line 287
    invoke-interface {v0, v7, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 289
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v3, :cond_4

    goto :goto_1

    .line 293
    :cond_4
    invoke-interface {v0, v7, v1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 294
    invoke-interface {v0, v7, v1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_5

    return-object v8

    .line 298
    :cond_5
    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0x1f03

    .line 300
    invoke-interface {v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 303
    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 304
    invoke-interface {v0, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    if-eqz v3, :cond_6

    .line 306
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :cond_6
    return-object v8

    :cond_7
    :goto_1
    return-object v8

    nop

    :array_0
    .array-data 4
        0x3033
        0x1
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x1e0
        0x3056
        0x320
        0x3038
    .end array-data
.end method

.method public static getImeiMd5()Ljava/lang/String;
    .locals 2

    .line 246
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 248
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/market/sdk/utils/Coder;->encodeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiBigVersionCode()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.ui.version.code"

    const-string v1, "-1"

    .line 183
    invoke-static {v0, v1}, Lcom/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiBigVersionName()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.ui.version.name"

    const-string v1, ""

    .line 198
    invoke-static {v0, v1}, Lcom/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {}, Lcom/market/sdk/utils/Client;->isAlphaBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-alpha"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {}, Lcom/market/sdk/utils/Client;->isDevBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-dev"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 211
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.region"

    const-string v1, "CN"

    .line 179
    invoke-static {v0, v1}, Lcom/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()I
    .locals 1

    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 86
    sget-boolean v0, Lcom/market/sdk/utils/Client;->mIsInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/market/sdk/utils/Client;->acquireScreenAttr(Landroid/content/Context;)V

    .line 90
    invoke-static {p0}, Lcom/market/sdk/utils/Client;->acquireDeviceConfig(Landroid/content/Context;)V

    .line 91
    invoke-static {p0}, Lcom/market/sdk/utils/Client;->acquireFeature(Landroid/content/Context;)V

    .line 92
    invoke-static {p0}, Lcom/market/sdk/utils/Client;->acquireLibrary(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/market/sdk/utils/Client;->acquireGLExtensions()V

    .line 94
    invoke-static {p0}, Lcom/market/sdk/utils/Client;->acquireSystemInfo(Landroid/content/Context;)V

    .line 95
    invoke-static {p0}, Lcom/market/sdk/utils/Client;->acquireIdentity(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 96
    sput-boolean p0, Lcom/market/sdk/utils/Client;->mIsInited:Z

    return-void
.end method

.method public static isAlphaBuild()Z
    .locals 2

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    .line 187
    invoke-static {v0, v1}, Lcom/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    .line 188
    invoke-static {v0, v1}, Lcom/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_alpha_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDevBuild()Z
    .locals 2

    const-string v0, "\\d+.\\d+.\\d+(-internal)?"

    .line 193
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInternationalMiui()Z
    .locals 2

    .line 333
    invoke-static {}, Lcom/market/sdk/utils/Client;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaterThanHoneycomb()Z
    .locals 2

    .line 311
    sget v0, Lcom/market/sdk/utils/Client;->SDK_VERSION:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaterThanLollipop()Z
    .locals 2

    .line 319
    invoke-static {}, Lcom/market/sdk/utils/Client;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaterThanN()Z
    .locals 2

    .line 324
    sget v0, Lcom/market/sdk/utils/Client;->SDK_VERSION:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMiui()Z
    .locals 2

    .line 329
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/miui.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/miui/miui.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    const-string v1, ""

    .line 223
    invoke-static {v0, v1}, Lcom/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

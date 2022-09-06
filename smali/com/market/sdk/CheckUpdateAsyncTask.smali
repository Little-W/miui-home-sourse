.class public Lcom/market/sdk/CheckUpdateAsyncTask;
.super Landroid/os/AsyncTask;
.source "CheckUpdateAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckUpdateAsyncTask"


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

.field private mUpdateListener:Lcom/market/sdk/XiaomiUpdateListener;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/market/sdk/XiaomiUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/market/sdk/XiaomiUpdateListener;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 41
    iput-object p2, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateListener:Lcom/market/sdk/XiaomiUpdateListener;

    return-void
.end method

.method private getFilterParams()Ljava/lang/String;
    .locals 4

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "screenSize"

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/market/sdk/utils/Client;->DISPLAY_WIDTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/market/sdk/utils/Client;->DISPLAY_HEIGHT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "resolution"

    .line 136
    sget-object v2, Lcom/market/sdk/utils/Client;->DISPLAY_RESOLUTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "density"

    .line 137
    sget v2, Lcom/market/sdk/utils/Client;->DISPLAY_DENSITY:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "touchScreen"

    .line 138
    sget v2, Lcom/market/sdk/utils/Client;->TOUCH_SCREEN:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "glEsVersion"

    .line 139
    sget-object v2, Lcom/market/sdk/utils/Client;->GLES_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "feature"

    .line 140
    sget-object v2, Lcom/market/sdk/utils/Client;->FEATURE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "library"

    .line 141
    sget-object v2, Lcom/market/sdk/utils/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "glExtension"

    .line 142
    sget-object v2, Lcom/market/sdk/utils/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk"

    .line 143
    sget v2, Lcom/market/sdk/utils/Client;->SDK_VERSION:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "version"

    .line 144
    sget-object v2, Lcom/market/sdk/utils/Client;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "release"

    .line 145
    sget-object v2, Lcom/market/sdk/utils/Client;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private parseUpdateInfo(Lorg/json/JSONObject;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "CheckUpdateAsyncTask"

    const-string v0, "update info json obj null"

    .line 154
    invoke-static {p1, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 158
    :cond_0
    sget-boolean v0, Lcom/market/sdk/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CheckUpdateAsyncTask"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    new-instance v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-direct {v0}, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;-><init>()V

    const-string v1, "host"

    .line 163
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    const-string v1, "fitness"

    .line 164
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->fitness:I

    const-string v1, "source"

    .line 165
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->source:I

    const-string v1, "updateLog"

    .line 166
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    const-string/jumbo v1, "versionCode"

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    const-string/jumbo v1, "versionName"

    .line 168
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    const-string v1, "apk"

    .line 169
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    const-string v1, "apkHash"

    .line 170
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    const-string v1, "apkSize"

    .line 171
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    const-string v1, "matchLanguage"

    .line 172
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->matchLanguage:Z

    .line 175
    sget-boolean v1, Lcom/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    if-eqz v1, :cond_2

    const-string v1, "diffFile"

    .line 176
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    const-string v1, "diffFileHash"

    .line 177
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffHash:Ljava/lang/String;

    const-string v1, "diffFileSize"

    .line 178
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffSize:J

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/market/sdk/utils/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x3

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 60
    :cond_1
    invoke-static {v0}, Lcom/market/sdk/utils/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    if-eqz v2, :cond_2

    const/4 p1, 0x2

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 64
    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lcom/market/sdk/XiaomiUpdateAgent;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/market/sdk/LocalAppInfo;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x5

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 69
    :cond_3
    new-instance v3, Lcom/market/sdk/utils/Connection;

    sget-object v4, Lcom/market/sdk/utils/Constants;->UPDATE_URL:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/market/sdk/utils/Connection;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v4, Lcom/market/sdk/utils/Connection$Parameter;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v3}, Lcom/market/sdk/utils/Connection$Parameter;-><init>(Lcom/market/sdk/utils/Connection;)V

    const-string v5, "info"

    .line 71
    invoke-direct {p0}, Lcom/market/sdk/CheckUpdateAsyncTask;->getFilterParams()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v5, "packageName"

    .line 72
    iget-object v6, p1, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string/jumbo v5, "versionCode"

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/market/sdk/LocalAppInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v5, "signature"

    .line 74
    iget-object p1, p1, Lcom/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "sdk"

    .line 75
    sget v5, Lcom/market/sdk/utils/Client;->SDK_VERSION:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "os"

    .line 76
    sget-object v5, Lcom/market/sdk/utils/Client;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "la"

    .line 77
    invoke-static {}, Lcom/market/sdk/utils/Client;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "co"

    .line 78
    invoke-static {}, Lcom/market/sdk/utils/Client;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "lo"

    .line 79
    invoke-static {}, Lcom/market/sdk/utils/Client;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "androidId"

    .line 80
    sget-object v5, Lcom/market/sdk/utils/Client;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "device"

    .line 81
    invoke-static {}, Lcom/market/sdk/utils/Client;->getDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "deviceType"

    .line 82
    invoke-static {}, Lcom/market/sdk/utils/Client;->getDeviceType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "cpuArchitecture"

    .line 83
    invoke-static {}, Lcom/market/sdk/utils/Client;->getCpuArch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "model"

    .line 84
    invoke-static {}, Lcom/market/sdk/utils/Client;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string/jumbo p1, "xiaomiSDKVersion"

    const-string v5, "11"

    .line 85
    invoke-virtual {v4, p1, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string/jumbo p1, "xiaomiSDKVersionName"

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/market/sdk/R$string;->marketSdkVersion:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "debug"

    .line 87
    sget-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->sUseSandbox:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    goto :goto_0

    :cond_4
    const-string v0, "0"

    :goto_0
    invoke-virtual {v4, p1, v0}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "miuiBigVersionName"

    .line 88
    invoke-static {}, Lcom/market/sdk/utils/Client;->getMiuiBigVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "miuiBigVersionCode"

    .line 89
    invoke-static {}, Lcom/market/sdk/utils/Client;->getMiuiBigVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string p1, "ext_abTestIdentifier"

    .line 90
    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->sAbTestIdentifer:Lcom/market/sdk/AbTestIdentifier;

    invoke-virtual {v0}, Lcom/market/sdk/AbTestIdentifier;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 91
    sget-boolean p1, Lcom/market/sdk/XiaomiUpdateAgent;->sUseImeiMd5AsIdentifier:Z

    if-nez p1, :cond_5

    sget-object p1, Lcom/market/sdk/XiaomiUpdateAgent;->sAbTestIdentifer:Lcom/market/sdk/AbTestIdentifier;

    sget-object v0, Lcom/market/sdk/AbTestIdentifier;->IMEI_MD5:Lcom/market/sdk/AbTestIdentifier;

    if-ne p1, v0, :cond_6

    :cond_5
    const-string p1, "imei"

    .line 92
    invoke-static {}, Lcom/market/sdk/utils/Client;->getImeiMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 96
    :cond_6
    sget-object p1, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    invoke-virtual {v3}, Lcom/market/sdk/utils/Connection;->requestJSON()Lcom/market/sdk/utils/Connection$NetworkError;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 97
    invoke-virtual {v3}, Lcom/market/sdk/utils/Connection;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Lcom/market/sdk/CheckUpdateAsyncTask;->parseUpdateInfo(Lorg/json/JSONObject;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    .line 99
    iget-object p1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    if-eqz p1, :cond_8

    const-string v0, "CheckUpdateAsyncTask"

    .line 100
    invoke-virtual {p1}, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget p1, p1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->fitness:I

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 104
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/market/sdk/CheckUpdateAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/market/sdk/UpdateResponse;

    invoke-direct {v0}, Lcom/market/sdk/UpdateResponse;-><init>()V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget-object v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    iput-object v1, v0, Lcom/market/sdk/UpdateResponse;->updateLog:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    iput v1, v0, Lcom/market/sdk/UpdateResponse;->versionCode:I

    .line 118
    iget-object v1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget-object v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/market/sdk/UpdateResponse;->versionName:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget-wide v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    iput-wide v1, v0, Lcom/market/sdk/UpdateResponse;->apkSize:J

    .line 120
    iget-object v1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget-object v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    iput-object v1, v0, Lcom/market/sdk/UpdateResponse;->apkHash:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget-wide v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffSize:J

    iput-wide v1, v0, Lcom/market/sdk/UpdateResponse;->diffSize:J

    .line 122
    iget-object v1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget-object v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget-object v2, v2, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/market/sdk/utils/Connection;->connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/UpdateResponse;->path:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget-boolean v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->matchLanguage:Z

    iput-boolean v1, v0, Lcom/market/sdk/UpdateResponse;->matchLanguage:Z

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/market/sdk/CheckUpdateAsyncTask;->mUpdateListener:Lcom/market/sdk/XiaomiUpdateListener;

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1, v0}, Lcom/market/sdk/XiaomiUpdateListener;->onUpdateReturned(ILcom/market/sdk/UpdateResponse;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/market/sdk/CheckUpdateAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 47
    sget-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/market/sdk/Patcher;->tryLoadLibrary()Z

    move-result v0

    sput-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    :cond_0
    return-void
.end method

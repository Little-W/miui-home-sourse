.class public Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;
.super Landroid/os/AsyncTask;
.source "GetApps64Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/GetApps64Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetSupportAppsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/market/sdk/IGetAppsCallback;

.field final synthetic this$0:Lcom/market/sdk/GetApps64Manager;

.field private update64List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/market/sdk/AppUpdate64;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market/sdk/GetApps64Manager;Lcom/market/sdk/IGetAppsCallback;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->this$0:Lcom/market/sdk/GetApps64Manager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->callback:Lcom/market/sdk/IGetAppsCallback;

    return-void
.end method

.method private parseResponse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/market/sdk/AppUpdate64;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const-string v1, "GetApps64Manager"

    if-nez p1, :cond_0

    const-string p0, "support64App json obj null"

    .line 100
    invoke-static {v1, p0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 104
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support64App : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "apps"

    .line 107
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 111
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 112
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "versionCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "versionName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    new-instance v6, Lcom/market/sdk/AppUpdate64;

    invoke-direct {v6, v3, v4, v5}, Lcom/market/sdk/AppUpdate64;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse support64App error: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 55
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/market/sdk/utils/Utils;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x3

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    new-instance p1, Lcom/market/sdk/utils/Connection;

    sget-object v0, Lcom/market/sdk/utils/Constants;->UPDATE_64_URL:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/market/sdk/utils/Connection;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/market/sdk/utils/Connection$Parameter;

    invoke-direct {v0, p1}, Lcom/market/sdk/utils/Connection$Parameter;-><init>(Lcom/market/sdk/utils/Connection;)V

    .line 61
    sget v1, Lcom/market/sdk/utils/Client;->SDK_VERSION:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 62
    sget-object v1, Lcom/market/sdk/utils/Client;->SYSTEM_VERSION:Ljava/lang/String;

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 63
    invoke-static {}, Lcom/market/sdk/utils/Client;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "la"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 64
    invoke-static {}, Lcom/market/sdk/utils/Client;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "co"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 65
    invoke-static {}, Lcom/market/sdk/utils/Client;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lo"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 66
    invoke-static {}, Lcom/market/sdk/utils/Client;->getCpuArch()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpuArchitecture"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 67
    invoke-static {}, Lcom/market/sdk/utils/Client;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 68
    invoke-static {}, Lcom/market/sdk/utils/Client;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 69
    invoke-static {}, Lcom/market/sdk/utils/Client;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceType"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string/jumbo v1, "xiaomiSDKVersion"

    const-string v2, "11"

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 71
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/market/sdk/R$string;->marketSdkVersion:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xiaomiSDKVersionName"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 72
    invoke-static {}, Lcom/market/sdk/utils/Client;->getMiuiBigVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuiBigVersionName"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 73
    invoke-static {}, Lcom/market/sdk/utils/Client;->getMiuiBigVersionCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuiBigVersionCode"

    invoke-virtual {v0, v2, v1}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 75
    sget-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    invoke-virtual {p1}, Lcom/market/sdk/utils/Connection;->requestJSON()Lcom/market/sdk/utils/Connection$NetworkError;

    move-result-object v1

    const/4 v2, 0x4

    if-ne v0, v1, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/market/sdk/utils/Connection;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->parseResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->update64List:Ljava/util/List;

    .line 78
    iget-object p0, p0, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->update64List:Ljava/util/List;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 81
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 85
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object p1, p0, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->callback:Lcom/market/sdk/IGetAppsCallback;

    iget-object p0, p0, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->update64List:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/market/sdk/IGetAppsCallback;->onLoadSuccess(Ljava/util/List;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->callback:Lcom/market/sdk/IGetAppsCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/market/sdk/IGetAppsCallback;->onLoadFailed(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.class Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "XiaomiUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/XiaomiUpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market/sdk/XiaomiUpdateAgent$1;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;-><init>()V

    return-void
.end method

.method static synthetic access$1300()V
    .locals 0

    .line 274
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->showUpdateDialog()V

    return-void
.end method

.method private getFilterParams()Ljava/lang/String;
    .locals 4

    .line 373
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "screenSize"

    .line 375
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

    .line 377
    sget-object v2, Lcom/market/sdk/utils/Client;->DISPLAY_RESOLUTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "density"

    .line 378
    sget v2, Lcom/market/sdk/utils/Client;->DISPLAY_DENSITY:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "touchScreen"

    .line 379
    sget v2, Lcom/market/sdk/utils/Client;->TOUCH_SCREEN:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "glEsVersion"

    .line 380
    sget-object v2, Lcom/market/sdk/utils/Client;->GLES_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "feature"

    .line 381
    sget-object v2, Lcom/market/sdk/utils/Client;->FEATURE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "library"

    .line 382
    sget-object v2, Lcom/market/sdk/utils/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "glExtension"

    .line 383
    sget-object v2, Lcom/market/sdk/utils/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk"

    .line 384
    sget v2, Lcom/market/sdk/utils/Client;->SDK_VERSION:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "version"

    .line 385
    sget-object v2, Lcom/market/sdk/utils/Client;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "release"

    .line 386
    sget-object v2, Lcom/market/sdk/utils/Client;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private parseUpdateInfo(Lorg/json/JSONObject;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "MarketUpdateAgent"

    const-string v1, "update info json obj null"

    .line 395
    invoke-static {p1, v1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 399
    :cond_0
    sget-boolean v1, Lcom/market/sdk/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MarketUpdateAgent"

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_1
    new-instance v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-direct {v1}, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;-><init>()V

    :try_start_0
    const-string v2, "host"

    .line 405
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    const-string v2, "fitness"

    .line 406
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->fitness:I

    const-string v2, "source"

    .line 407
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->source:I

    const-string v2, "updateLog"

    .line 408
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    const-string v2, "versionCode"

    .line 409
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    const-string v2, "versionName"

    .line 410
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    const-string v2, "apk"

    .line 411
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    const-string v2, "apkHash"

    .line 412
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    const-string v2, "apkSize"

    .line 413
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    const-string v2, "matchLanguage"

    .line 414
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->matchLanguage:Z

    .line 417
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "diffFile"

    .line 418
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    const-string v2, "diffFileHash"

    .line 419
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffHash:Ljava/lang/String;

    const-string v2, "diffFileSize"

    .line 420
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffSize:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "MarketUpdateAgent"

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get update info failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MarketUpdateAgent"

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "original content : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static showUpdateDialog()V
    .locals 7

    .line 451
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "MarketUpdateAgent"

    const-string v1, "activity not running!"

    .line 456
    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 459
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "%s \u65b0\u7248\u672c"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 460
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/market/sdk/LocalAppInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/market/sdk/LocalAppInfo;->displayName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 462
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    const-string v2, "\u63a8\u8350\u60a8\u7acb\u5373\u5347\u7ea7\u5230\u6700\u65b0\u7684%1$s\u7248\\n\u5927\u5c0f: %2$s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 464
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 465
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    invoke-static {v5, v6, v0}, Lcom/market/sdk/utils/Utils;->getByteString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 463
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "\u63a8\u8350\u60a8\u7acb\u5373\u5347\u7ea7\u5230\u6700\u65b0\u7684%1$s\u7248\\n\u589e\u91cf\u66f4\u65b0\u53ea\u9700\u4e0b\u8f7d: %2$s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 467
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 468
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    invoke-static {v5, v6, v0}, Lcom/market/sdk/utils/Utils;->getByteString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 466
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 461
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 469
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$1;

    invoke-direct {v2}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$1;-><init>()V

    .line 470
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    .line 285
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 289
    :cond_0
    invoke-static {p1}, Lcom/market/sdk/utils/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x3

    .line 290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 291
    :cond_1
    invoke-static {p1}, Lcom/market/sdk/utils/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 295
    :cond_2
    invoke-static {p1}, Lcom/market/sdk/XiaomiUpdateAgent;->getAppInfo(Landroid/content/Context;)Lcom/market/sdk/LocalAppInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/market/sdk/XiaomiUpdateAgent;->access$402(Lcom/market/sdk/LocalAppInfo;)Lcom/market/sdk/LocalAppInfo;

    .line 296
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/market/sdk/LocalAppInfo;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x5

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 300
    :cond_3
    new-instance p1, Lcom/market/sdk/utils/Connection;

    sget-object v1, Lcom/market/sdk/utils/Constants;->UPDATE_URL:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/market/sdk/utils/Connection;-><init>(Ljava/lang/String;)V

    .line 301
    new-instance v1, Lcom/market/sdk/utils/Connection$Parameter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/market/sdk/utils/Connection$Parameter;-><init>(Lcom/market/sdk/utils/Connection;)V

    const-string v2, "info"

    .line 302
    invoke-direct {p0}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->getFilterParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "packageName"

    .line 303
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/market/sdk/LocalAppInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "versionCode"

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/market/sdk/LocalAppInfo;

    move-result-object v4

    iget v4, v4, Lcom/market/sdk/LocalAppInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "apkHash"

    .line 305
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/market/sdk/LocalAppInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/market/sdk/LocalAppInfo;->sourceMD5:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "signature"

    .line 306
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/market/sdk/LocalAppInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "sdk"

    .line 307
    sget v3, Lcom/market/sdk/utils/Client;->SDK_VERSION:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "os"

    .line 308
    sget-object v3, Lcom/market/sdk/utils/Client;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "la"

    .line 309
    invoke-static {}, Lcom/market/sdk/utils/Client;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "co"

    .line 310
    invoke-static {}, Lcom/market/sdk/utils/Client;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "lo"

    .line 311
    invoke-static {}, Lcom/market/sdk/utils/Client;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "androidId"

    .line 312
    sget-object v3, Lcom/market/sdk/utils/Client;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "device"

    .line 313
    invoke-static {}, Lcom/market/sdk/utils/Client;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "deviceType"

    .line 314
    invoke-static {}, Lcom/market/sdk/utils/Client;->getDeviceType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "cpuArchitecture"

    .line 315
    invoke-static {}, Lcom/market/sdk/utils/Client;->getCpuArch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "model"

    .line 316
    invoke-static {}, Lcom/market/sdk/utils/Client;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "xiaomiSDKVersion"

    const-string v3, "11"

    .line 317
    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "debug"

    .line 318
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "1"

    goto :goto_0

    :cond_4
    const-string v3, "0"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "miuiBigVersionName"

    .line 319
    invoke-static {}, Lcom/market/sdk/utils/Client;->getMiuiBigVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "miuiBigVersionCode"

    .line 320
    invoke-static {}, Lcom/market/sdk/utils/Client;->getMiuiBigVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v2, "ext_abTestIdentifier"

    .line 321
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$600()Lcom/market/sdk/AbTestIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market/sdk/AbTestIdentifier;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 322
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$700()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$600()Lcom/market/sdk/AbTestIdentifier;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/AbTestIdentifier;->IMEI_MD5:Lcom/market/sdk/AbTestIdentifier;

    if-ne v2, v3, :cond_6

    :cond_5
    const-string v2, "imei"

    .line 323
    invoke-static {}, Lcom/market/sdk/utils/Client;->getImeiMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 327
    :cond_6
    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    invoke-virtual {p1}, Lcom/market/sdk/utils/Connection;->requestJSON()Lcom/market/sdk/utils/Connection$NetworkError;

    move-result-object v2

    if-ne v1, v2, :cond_8

    .line 328
    invoke-virtual {p1}, Lcom/market/sdk/utils/Connection;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    .line 329
    invoke-direct {p0, p1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->parseUpdateInfo(Lorg/json/JSONObject;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/market/sdk/XiaomiUpdateAgent;->access$802(Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    .line 330
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p1, "MarketUpdateAgent"

    .line 331
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p1

    iget p1, p1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->fitness:I

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_1

    :cond_7
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 335
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 274
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    .line 341
    invoke-static {v0}, Lcom/market/sdk/XiaomiUpdateAgent;->access$902(Z)Z

    .line 342
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 364
    :cond_2
    new-instance p1, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;-><init>(Lcom/market/sdk/XiaomiUpdateAgent$1;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 347
    :cond_3
    :goto_0
    new-instance v0, Lcom/market/sdk/UpdateResponse;

    invoke-direct {v0}, Lcom/market/sdk/UpdateResponse;-><init>()V

    .line 348
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    .line 349
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    iput-object v1, v0, Lcom/market/sdk/UpdateResponse;->updateLog:Ljava/lang/String;

    .line 350
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    iput v1, v0, Lcom/market/sdk/UpdateResponse;->versionCode:I

    .line 351
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/market/sdk/UpdateResponse;->versionName:Ljava/lang/String;

    .line 352
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    iput-wide v1, v0, Lcom/market/sdk/UpdateResponse;->apkSize:J

    .line 353
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    iput-object v1, v0, Lcom/market/sdk/UpdateResponse;->apkHash:Ljava/lang/String;

    .line 354
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffSize:J

    iput-wide v1, v0, Lcom/market/sdk/UpdateResponse;->diffSize:J

    .line 355
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/market/sdk/utils/Connection;->connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/UpdateResponse;->path:Ljava/lang/String;

    .line 356
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->matchLanguage:Z

    iput-boolean v1, v0, Lcom/market/sdk/UpdateResponse;->matchLanguage:Z

    .line 358
    :cond_4
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$1100()Lcom/market/sdk/XiaomiUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 359
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$1100()Lcom/market/sdk/XiaomiUpdateListener;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1, v0}, Lcom/market/sdk/XiaomiUpdateListener;->onUpdateReturned(ILcom/market/sdk/UpdateResponse;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 274
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const-string v0, "MarketUpdateAgent"

    const-string v1, "start to check update"

    .line 277
    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-static {}, Lcom/market/sdk/Patcher;->tryLoadLibrary()Z

    move-result v0

    invoke-static {v0}, Lcom/market/sdk/XiaomiUpdateAgent;->access$102(Z)Z

    :cond_0
    return-void
.end method

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
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market/sdk/XiaomiUpdateAgent$1;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;-><init>()V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 321
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->isNeedShowDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()V
    .locals 0

    .line 321
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->showUpdateDialog()V

    return-void
.end method

.method private static getDayOfMonth(Ljava/lang/Long;)I
    .locals 3

    .line 513
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 514
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 515
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x5

    .line 516
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method private getFilterParams()Ljava/lang/String;
    .locals 4

    .line 413
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "screenSize"

    .line 415
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

    .line 417
    sget-object v2, Lcom/market/sdk/utils/Client;->DISPLAY_RESOLUTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "density"

    .line 418
    sget v2, Lcom/market/sdk/utils/Client;->DISPLAY_DENSITY:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "touchScreen"

    .line 419
    sget v2, Lcom/market/sdk/utils/Client;->TOUCH_SCREEN:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "glEsVersion"

    .line 420
    sget-object v2, Lcom/market/sdk/utils/Client;->GLES_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "feature"

    .line 421
    sget-object v2, Lcom/market/sdk/utils/Client;->FEATURE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "library"

    .line 422
    sget-object v2, Lcom/market/sdk/utils/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "glExtension"

    .line 423
    sget-object v2, Lcom/market/sdk/utils/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk"

    .line 424
    sget v2, Lcom/market/sdk/utils/Client;->SDK_VERSION:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "version"

    .line 425
    sget-object v2, Lcom/market/sdk/utils/Client;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "release"

    .line 426
    sget-object v2, Lcom/market/sdk/utils/Client;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private static isNeedShowDialog()Z
    .locals 7

    const-string v0, "sdkBeginTime"

    const/4 v1, 0x0

    .line 485
    new-array v2, v1, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v0, v2}, Lcom/market/sdk/utils/PrefUtils;->getLong(Ljava/lang/String;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf731400

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-gez v0, :cond_3

    const-string v0, "sdkWindowLastShowTime"

    .line 487
    new-array v3, v1, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v0, v3}, Lcom/market/sdk/utils/PrefUtils;->getLong(Ljava/lang/String;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1499700

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    return v1

    :cond_0
    const-string v3, "sdkWindowShowTimes"

    .line 492
    new-array v4, v1, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v3, v4}, Lcom/market/sdk/utils/PrefUtils;->getInt(Ljava/lang/String;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    const-string v0, "sdkWindowShowTimes"

    add-int/2addr v3, v2

    .line 494
    new-array v4, v1, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v0, v3, v4}, Lcom/market/sdk/utils/PrefUtils;->setInt(Ljava/lang/String;I[Lcom/market/sdk/utils/PrefUtils$PrefFile;)V

    const-string v0, "sdkWindowLastShowTime"

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-array v1, v1, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v0, v3, v4, v1}, Lcom/market/sdk/utils/PrefUtils;->setLong(Ljava/lang/String;J[Lcom/market/sdk/utils/PrefUtils$PrefFile;)V

    return v2

    .line 498
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->getDayOfMonth(Ljava/lang/Long;)I

    move-result v3

    invoke-static {v0}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->getDayOfMonth(Ljava/lang/Long;)I

    move-result v0

    if-eq v3, v0, :cond_2

    const-string v0, "sdkWindowShowTimes"

    .line 501
    new-array v3, v1, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v0, v2, v3}, Lcom/market/sdk/utils/PrefUtils;->setInt(Ljava/lang/String;I[Lcom/market/sdk/utils/PrefUtils$PrefFile;)V

    const-string v0, "sdkWindowLastShowTime"

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-array v1, v1, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v0, v3, v4, v1}, Lcom/market/sdk/utils/PrefUtils;->setLong(Ljava/lang/String;J[Lcom/market/sdk/utils/PrefUtils$PrefFile;)V

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private parseUpdateInfo(Lorg/json/JSONObject;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "MarketUpdateAgent"

    const-string v0, "update info json obj null"

    .line 435
    invoke-static {p1, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 439
    :cond_0
    sget-boolean v0, Lcom/market/sdk/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MarketUpdateAgent"

    .line 440
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

    .line 443
    :cond_1
    new-instance v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-direct {v0}, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;-><init>()V

    const-string v1, "host"

    .line 444
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    const-string v1, "fitness"

    .line 445
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->fitness:I

    const-string v1, "source"

    .line 446
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->source:I

    const-string v1, "updateLog"

    .line 447
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    const-string/jumbo v1, "versionCode"

    .line 448
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    const-string/jumbo v1, "versionName"

    .line 449
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    const-string v1, "apk"

    .line 450
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    const-string v1, "apkHash"

    .line 451
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    const-string v1, "apkSize"

    .line 452
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    const-string v1, "matchLanguage"

    .line 453
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->matchLanguage:Z

    .line 456
    sget-boolean v1, Lcom/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    if-eqz v1, :cond_2

    const-string v1, "diffFile"

    .line 457
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    const-string v1, "diffFileHash"

    .line 458
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffHash:Ljava/lang/String;

    const-string v1, "diffFileSize"

    .line 459
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffSize:J

    :cond_2
    return-object v0
.end method

.method private static showUpdateDialog()V
    .locals 4

    .line 520
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 524
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

    .line 525
    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 529
    :cond_1
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_2

    sget v2, Lcom/market/sdk/R$style;->AlertDialog_Theme_Light:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/market/sdk/R$style;->AlertDialog_Theme_DayNight:I

    :goto_0
    invoke-direct {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 530
    sget v2, Lcom/market/sdk/R$string;->xiaomi_market_sdk_update_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 531
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 532
    sget v0, Lcom/market/sdk/R$string;->xiaomi_market_sdk_update_dialog_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/market/sdk/R$string;->xiaomi_market_sdk_update_dialog_ok:I

    new-instance v3, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$1;

    invoke-direct {v3}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$1;-><init>()V

    .line 533
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 540
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    .line 332
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 336
    :cond_0
    invoke-static {v0}, Lcom/market/sdk/utils/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x3

    .line 337
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 338
    :cond_1
    invoke-static {v0}, Lcom/market/sdk/utils/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    if-eqz v2, :cond_2

    const/4 p1, 0x2

    .line 339
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 342
    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lcom/market/sdk/XiaomiUpdateAgent;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/market/sdk/LocalAppInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/market/sdk/XiaomiUpdateAgent;->access$202(Lcom/market/sdk/LocalAppInfo;)Lcom/market/sdk/LocalAppInfo;

    .line 343
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$200()Lcom/market/sdk/LocalAppInfo;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x5

    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 347
    :cond_3
    new-instance p1, Lcom/market/sdk/utils/Connection;

    sget-object v3, Lcom/market/sdk/utils/Constants;->UPDATE_URL:Ljava/lang/String;

    invoke-direct {p1, v3}, Lcom/market/sdk/utils/Connection;-><init>(Ljava/lang/String;)V

    .line 348
    new-instance v3, Lcom/market/sdk/utils/Connection$Parameter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, p1}, Lcom/market/sdk/utils/Connection$Parameter;-><init>(Lcom/market/sdk/utils/Connection;)V

    const-string v4, "info"

    .line 349
    invoke-direct {p0}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->getFilterParams()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "packageName"

    .line 350
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$200()Lcom/market/sdk/LocalAppInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string/jumbo v4, "versionCode"

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$200()Lcom/market/sdk/LocalAppInfo;

    move-result-object v6

    iget v6, v6, Lcom/market/sdk/LocalAppInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "signature"

    .line 352
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$200()Lcom/market/sdk/LocalAppInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "sdk"

    .line 353
    sget v5, Lcom/market/sdk/utils/Client;->SDK_VERSION:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "os"

    .line 354
    sget-object v5, Lcom/market/sdk/utils/Client;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "la"

    .line 355
    invoke-static {}, Lcom/market/sdk/utils/Client;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "co"

    .line 356
    invoke-static {}, Lcom/market/sdk/utils/Client;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "lo"

    .line 357
    invoke-static {}, Lcom/market/sdk/utils/Client;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "androidId"

    .line 358
    sget-object v5, Lcom/market/sdk/utils/Client;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "device"

    .line 359
    invoke-static {}, Lcom/market/sdk/utils/Client;->getDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "deviceType"

    .line 360
    invoke-static {}, Lcom/market/sdk/utils/Client;->getDeviceType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "cpuArchitecture"

    .line 361
    invoke-static {}, Lcom/market/sdk/utils/Client;->getCpuArch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v4, "model"

    .line 362
    invoke-static {}, Lcom/market/sdk/utils/Client;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string/jumbo v4, "xiaomiSDKVersion"

    const-string v5, "11"

    .line 363
    invoke-virtual {v3, v4, v5}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string/jumbo v4, "xiaomiSDKVersionName"

    .line 364
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/market/sdk/R$string;->marketSdkVersion:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v0, "debug"

    .line 365
    sget-boolean v4, Lcom/market/sdk/XiaomiUpdateAgent;->sUseSandbox:Z

    if-eqz v4, :cond_4

    const-string v4, "1"

    goto :goto_0

    :cond_4
    const-string v4, "0"

    :goto_0
    invoke-virtual {v3, v0, v4}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v0, "miuiBigVersionName"

    .line 366
    invoke-static {}, Lcom/market/sdk/utils/Client;->getMiuiBigVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v0, "miuiBigVersionCode"

    .line 367
    invoke-static {}, Lcom/market/sdk/utils/Client;->getMiuiBigVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    const-string v0, "ext_abTestIdentifier"

    .line 368
    sget-object v4, Lcom/market/sdk/XiaomiUpdateAgent;->sAbTestIdentifer:Lcom/market/sdk/AbTestIdentifier;

    invoke-virtual {v4}, Lcom/market/sdk/AbTestIdentifier;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 369
    sget-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->sUseImeiMd5AsIdentifier:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->sAbTestIdentifer:Lcom/market/sdk/AbTestIdentifier;

    sget-object v4, Lcom/market/sdk/AbTestIdentifier;->IMEI_MD5:Lcom/market/sdk/AbTestIdentifier;

    if-ne v0, v4, :cond_6

    :cond_5
    const-string v0, "imei"

    .line 370
    invoke-static {}, Lcom/market/sdk/utils/Client;->getImeiMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/market/sdk/utils/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;

    .line 374
    :cond_6
    sget-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    invoke-virtual {p1}, Lcom/market/sdk/utils/Connection;->requestJSON()Lcom/market/sdk/utils/Connection$NetworkError;

    move-result-object v3

    if-ne v0, v3, :cond_8

    .line 375
    invoke-virtual {p1}, Lcom/market/sdk/utils/Connection;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    .line 376
    invoke-direct {p0, p1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->parseUpdateInfo(Lorg/json/JSONObject;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/market/sdk/XiaomiUpdateAgent;->access$302(Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    .line 377
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p1, "MarketUpdateAgent"

    .line 378
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p1

    iget p1, p1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->fitness:I

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 382
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 321
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    const/4 v0, 0x0

    .line 388
    invoke-static {v0}, Lcom/market/sdk/XiaomiUpdateAgent;->access$402(Z)Z

    .line 389
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 393
    :cond_0
    new-instance v2, Lcom/market/sdk/UpdateResponse;

    invoke-direct {v2}, Lcom/market/sdk/UpdateResponse;-><init>()V

    .line 394
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 395
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    iput-object v3, v2, Lcom/market/sdk/UpdateResponse;->updateLog:Ljava/lang/String;

    .line 396
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v3

    iget v3, v3, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    iput v3, v2, Lcom/market/sdk/UpdateResponse;->versionCode:I

    .line 397
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    iput-object v3, v2, Lcom/market/sdk/UpdateResponse;->versionName:Ljava/lang/String;

    .line 398
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    iput-wide v3, v2, Lcom/market/sdk/UpdateResponse;->apkSize:J

    .line 399
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    iput-object v3, v2, Lcom/market/sdk/UpdateResponse;->apkHash:Ljava/lang/String;

    .line 400
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffSize:J

    iput-wide v3, v2, Lcom/market/sdk/UpdateResponse;->diffSize:J

    .line 401
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/market/sdk/utils/Connection;->connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/market/sdk/UpdateResponse;->path:Ljava/lang/String;

    .line 402
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->matchLanguage:Z

    iput-boolean v3, v2, Lcom/market/sdk/UpdateResponse;->matchLanguage:Z

    .line 404
    :cond_1
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/market/sdk/XiaomiUpdateListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 405
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/market/sdk/XiaomiUpdateListener;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, v2}, Lcom/market/sdk/XiaomiUpdateListener;->onUpdateReturned(ILcom/market/sdk/UpdateResponse;)V

    .line 407
    :cond_2
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$600()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    instance-of p1, v1, Landroid/app/Activity;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/market/sdk/utils/Client;->isMiui()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 408
    new-instance p1, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;-><init>(Lcom/market/sdk/XiaomiUpdateAgent$1;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 321
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const-string v0, "MarketUpdateAgent"

    const-string v1, "start to check update"

    .line 324
    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    if-nez v0, :cond_0

    .line 326
    invoke-static {}, Lcom/market/sdk/Patcher;->tryLoadLibrary()Z

    move-result v0

    sput-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    :cond_0
    return-void
.end method

.class public Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;
.super Ljava/lang/Object;
.source "MarketAutoInstallRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;


# instance fields
.field private timestamp:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDeepLinkBody(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    .line 121
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ref"

    .line 122
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "app"

    const-string p2, "mihome"

    .line 123
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "overlayPosition"

    .line 124
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "launchWhenInstalled"

    .line 125
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "000"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/net/EncryptUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method private getDeeplinkParams(Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/miui/home/launcher/net/HttpsUtils;->getCommonParams(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object p1

    .line 135
    invoke-static {p1}, Lcom/miui/home/launcher/net/HttpsUtils;->getUrlSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    .line 136
    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static getInstance()Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;
    .locals 2

    .line 42
    sget-object v0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->instance:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    if-nez v0, :cond_0

    .line 43
    const-class v0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    monitor-enter v0

    .line 44
    :try_start_0
    new-instance v1, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    invoke-direct {v1}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->instance:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    .line 45
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_0
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->instance:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    return-object v0
.end method

.method public static synthetic lambda$getAutoInstallDeepLink$0(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;Ljava/lang/String;Lio/reactivex2/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->timestamp:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.launcher.intl.miui.com/launcher/flowcard/v1/signature?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->timestamp:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->getDeeplinkParams(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/net/HttpsUtils;->generatorParamString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home"

    const/4 v2, 0x1

    .line 57
    invoke-direct {p0, p1, v1, v2, v2}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->getDeepLinkBody(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/net/HttpsUtils;->doPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance v0, Lcom/mi/google/gson/Gson;

    invoke-direct {v0}, Lcom/mi/google/gson/Gson;-><init>()V

    const-class v1, Lcom/miui/home/launcher/net/CommonResponseBean;

    invoke-virtual {v0, p1, v1}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/net/CommonResponseBean;

    .line 59
    iget-object v0, p1, Lcom/miui/home/launcher/net/CommonResponseBean;->header:Lcom/miui/home/launcher/net/CommonResponseBean$Header;

    if-eqz v0, :cond_3

    .line 61
    iget-wide v0, v0, Lcom/miui/home/launcher/net/CommonResponseBean$Header;->time:J

    .line 62
    iget-object p1, p1, Lcom/miui/home/launcher/net/CommonResponseBean;->data:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "000"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/net/EncryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/mi/google/gson/Gson;

    invoke-direct {v0}, Lcom/mi/google/gson/Gson;-><init>()V

    const-class v1, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallResponseBean;

    invoke-virtual {v0, p1, v1}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallResponseBean;

    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p1, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallResponseBean;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object p1, p1, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallResponseBean;->url:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/reactivex2/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 69
    invoke-interface {p2}, Lio/reactivex2/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/reactivex2/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "autoInstallBean == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/reactivex2/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "data == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/reactivex2/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "header == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/reactivex2/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getAutoInstallDeepLink$1(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-interface {p0, p2}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "10001"

    const-string v0, "server data error"

    .line 89
    invoke-interface {p0, p2, v0, p1}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;->onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$getAutoInstallDeepLink$2(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "10001"

    const-string v0, "server data error"

    .line 93
    invoke-interface {p0, p2, v0, p1}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;->onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAutoInstallDeepLink(Ljava/lang/String;Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;)V
    .locals 3

    .line 54
    new-instance v0, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$XpLz3XdnueyxukzqrC1w73AZg_o;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$XpLz3XdnueyxukzqrC1w73AZg_o;-><init>(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex2/Observable;->create(Lio/reactivex2/ObservableOnSubscribe;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 82
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->io()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 83
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->io()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$iCbsitAT0c57_CLeWN6-XVoXDAk;

    invoke-direct {v1, p2, p1}, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$iCbsitAT0c57_CLeWN6-XVoXDAk;-><init>(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;Ljava/lang/String;)V

    new-instance v2, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$76JuMs2ZlIuZj0i6fySfNfyRusQ;

    invoke-direct {v2, p2, p1}, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$76JuMs2ZlIuZj0i6fySfNfyRusQ;-><init>(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v1, v2}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 4

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&senderPackageName="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "kbjay_russia_rep"

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deepLink\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

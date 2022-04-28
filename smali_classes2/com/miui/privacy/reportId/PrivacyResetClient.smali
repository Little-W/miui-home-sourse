.class public Lcom/miui/privacy/reportId/PrivacyResetClient;
.super Ljava/lang/Object;
.source "PrivacyResetClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/privacy/reportId/PrivacyResetClient$SingletonHolder;
    }
.end annotation


# static fields
.field private static timestamp:J


# instance fields
.field private mPrivacyApi:Lcom/miui/privacy/reportId/PrivacyResetApi;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "privacy.api.intl.miui.com"

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;

    invoke-direct {v1}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;-><init>()V

    const-string v2, "Cookie"

    const-string v3, "Blah-Blah-Header-Key"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->setEncryptHeaderKeys([Ljava/lang/String;)Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;

    move-result-object v1

    const-string v2, "r"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->setReservedQueryKeys([Ljava/lang/String;)Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->setEncryptDomainList(Ljava/util/List;)Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->setDefaultEncrypt(Z)Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->build()Lcom/mi/encrypt/okhttp/EncryptInterceptor;

    move-result-object v0

    .line 66
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 67
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/privacy/http/HttpLoggingInterceptor;

    invoke-direct {v1}, Lcom/miui/privacy/http/HttpLoggingInterceptor;-><init>()V

    .line 68
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 69
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 70
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 75
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    new-instance v2, Lcom/miui/privacy/http/BaseResponseFactory;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {v2, v3}, Lcom/miui/privacy/http/BaseResponseFactory;-><init>(Lcom/google/gson/Gson;)V

    .line 76
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 77
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    const-string v2, "https://privacy.api.intl.miui.com/collect/"

    .line 78
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 81
    const-class v1, Lcom/miui/privacy/reportId/PrivacyResetApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacy/reportId/PrivacyResetApi;

    iput-object v0, p0, Lcom/miui/privacy/reportId/PrivacyResetClient;->mPrivacyApi:Lcom/miui/privacy/reportId/PrivacyResetApi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/privacy/reportId/PrivacyResetClient$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/miui/privacy/reportId/PrivacyResetClient;-><init>()V

    return-void
.end method

.method private static encryptReportInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 6

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 114
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    .line 117
    :goto_0
    invoke-static {}, Lcom/miui/privacy/http/CommercialHttpUtils;->getMiuiVersion()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    :cond_0
    :try_start_1
    const-string v4, "pkg"

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "timestamp"

    .line 124
    sget-wide v4, Lcom/miui/privacy/reportId/PrivacyResetClient;->timestamp:J

    invoke-virtual {v0, p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "idType"

    .line 125
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "idContent"

    .line 126
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "miuiVersion"

    .line 127
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "apkVersion"

    .line 128
    iget-object p1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "language"

    .line 129
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "region"

    const-string p1, "ro.miui.region"

    const-string p2, "IN"

    .line 130
    invoke-static {p1, p2}, Lcom/miui/privacy/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "PrivacyResetClient"

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "body = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/privacy/log/PrivacyLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "application/json"

    .line 132
    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 135
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method private static getCommonParams(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "timestamp"

    .line 98
    sget-wide v2, Lcom/miui/privacy/reportId/PrivacyResetClient;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "r"

    const-string v2, "ro.miui.region"

    const-string v3, "IN"

    .line 99
    invoke-static {v2, v3}, Lcom/miui/privacy/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "l"

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pkg"

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getPrivacyResetApi()Lcom/miui/privacy/reportId/PrivacyResetApi;
    .locals 1

    .line 50
    invoke-static {}, Lcom/miui/privacy/reportId/PrivacyResetClient$SingletonHolder;->access$100()Lcom/miui/privacy/reportId/PrivacyResetClient;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/privacy/reportId/PrivacyResetClient;->mPrivacyApi:Lcom/miui/privacy/reportId/PrivacyResetApi;

    return-object v0
.end method

.method public static reportPrivacyAgreement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/privacy/bean/Result;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_terms_agreed_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/privacy/reportId/PrivacyResetClient;->timestamp:J

    .line 86
    sget-wide v0, Lcom/miui/privacy/reportId/PrivacyResetClient;->timestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/privacy/reportId/PrivacyResetClient;->timestamp:J

    .line 89
    :cond_0
    invoke-static {}, Lcom/miui/privacy/reportId/PrivacyResetClient;->getPrivacyResetApi()Lcom/miui/privacy/reportId/PrivacyResetApi;

    move-result-object v0

    .line 90
    invoke-static {p0}, Lcom/miui/privacy/reportId/PrivacyResetClient;->getCommonParams(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lcom/miui/privacy/reportId/PrivacyResetClient;->encryptReportInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/miui/privacy/reportId/PrivacyResetApi;->reportPrivacyAgreement(Ljava/util/Map;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 91
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 92
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

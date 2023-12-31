.class public Lcom/mi/globallauncher/config/CommercialClient;
.super Ljava/lang/Object;
.source "CommercialClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/config/CommercialClient$SingletonHolder;
    }
.end annotation


# static fields
.field public static API_HOST:Ljava/lang/String; = "https://api.setting.intl.miui.com"

.field public static API_HOST_ENCRYPT:Ljava/lang/String; = "api.setting.intl.miui.com"


# instance fields
.field private mConfigApi:Lcom/mi/globallauncher/config/CommercialCloudConfigApi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/mi/globallauncher/config/CommercialClient;->mConfigApi:Lcom/mi/globallauncher/config/CommercialCloudConfigApi;

    .line 38
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/globallauncher/manager/BranchImplement;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://sandbox-setting.api.intl.miui.com/"

    .line 39
    sput-object v0, Lcom/mi/globallauncher/config/CommercialClient;->API_HOST:Ljava/lang/String;

    const-string v0, "sandbox-setting.api.intl.miui.com"

    .line 40
    sput-object v0, Lcom/mi/globallauncher/config/CommercialClient;->API_HOST_ENCRYPT:Ljava/lang/String;

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/globallauncher/manager/BranchImplement;->isDebug()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    sget-object v1, Lcom/mi/globallauncher/config/CommercialClient;->API_HOST_ENCRYPT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    new-instance v1, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;

    invoke-direct {v1}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;-><init>()V

    const-string v2, "Cookie"

    const-string v3, "Blah-Blah-Header-Key"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->setEncryptHeaderKeys([Ljava/lang/String;)Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;

    move-result-object v1

    const-string v2, "r"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->setReservedQueryKeys([Ljava/lang/String;)Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->setEncryptDomainList(Ljava/util/List;)Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->setDefaultEncrypt(Z)Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->build()Lcom/mi/encrypt/okhttp/EncryptInterceptor;

    move-result-object v0

    .line 54
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 55
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/privacy/http/HttpLoggingInterceptor;

    invoke-direct {v1}, Lcom/miui/privacy/http/HttpLoggingInterceptor;-><init>()V

    .line 56
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 57
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 63
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    new-instance v2, Lcom/miui/privacy/http/BaseResponseFactory;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {v2, v3}, Lcom/miui/privacy/http/BaseResponseFactory;-><init>(Lcom/google/gson/Gson;)V

    .line 64
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 65
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    sget-object v2, Lcom/mi/globallauncher/config/CommercialClient;->API_HOST:Ljava/lang/String;

    .line 66
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/globallauncher/manager/BranchImplement;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommercialClient: CommercialCloudConfigApi.API_HOST: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mi/globallauncher/config/CommercialClient;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommercialClient"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    const-class v1, Lcom/mi/globallauncher/config/CommercialCloudConfigApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/globallauncher/config/CommercialCloudConfigApi;

    iput-object v0, p0, Lcom/mi/globallauncher/config/CommercialClient;->mConfigApi:Lcom/mi/globallauncher/config/CommercialCloudConfigApi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/globallauncher/config/CommercialClient$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/mi/globallauncher/config/CommercialClient;-><init>()V

    return-void
.end method

.method public static getCloudConfigApi()Lcom/mi/globallauncher/config/CommercialCloudConfigApi;
    .locals 1

    .line 33
    invoke-static {}, Lcom/mi/globallauncher/config/CommercialClient$SingletonHolder;->access$100()Lcom/mi/globallauncher/config/CommercialClient;

    move-result-object v0

    iget-object v0, v0, Lcom/mi/globallauncher/config/CommercialClient;->mConfigApi:Lcom/mi/globallauncher/config/CommercialCloudConfigApi;

    return-object v0
.end method

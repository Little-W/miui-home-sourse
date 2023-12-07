.class public Lcom/xiaomi/analytics/Analytics;
.super Ljava/lang/Object;


# static fields
.field private static volatile sAnalytics:Lcom/xiaomi/analytics/Analytics; = null

.field private static volatile sUpdateEnable:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private sTrackerFactory:Lcom/xiaomi/analytics/LoggerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/analytics/LoggerFactory<",
            "Lcom/xiaomi/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/analytics/LoggerFactory;

    invoke-direct {v0}, Lcom/xiaomi/analytics/LoggerFactory;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Analytics;->sTrackerFactory:Lcom/xiaomi/analytics/LoggerFactory;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/analytics/BaseLogger;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/xiaomi/analytics/Analytics;->keepMethods()V

    iget-object p1, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    iget-object p1, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/Debugger;->getDebugger(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/Debugger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/analytics/internal/Debugger;->register()V

    iget-object p0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/SysUtils;->deleteDeviceIdInSpFile(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/analytics/Analytics;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;
    .locals 2

    const-class v0, Lcom/xiaomi/analytics/Analytics;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/analytics/Analytics;->sAnalytics:Lcom/xiaomi/analytics/Analytics;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/analytics/Analytics;

    invoke-direct {v1, p0}, Lcom/xiaomi/analytics/Analytics;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/analytics/Analytics;->sAnalytics:Lcom/xiaomi/analytics/Analytics;

    :cond_0
    sget-object p0, Lcom/xiaomi/analytics/Analytics;->sAnalytics:Lcom/xiaomi/analytics/Analytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isPlatformSignature(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/CertificateUtils;->isXiaomiPlatformCertificate([Landroid/content/pm/Signature;)Z

    move-result v0

    const-string v1, "Analytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const-string p0, "%s is platform signatures : %b"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isSystemPackage(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUpdateEnable()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/analytics/Analytics;->sUpdateEnable:Z

    return v0
.end method

.method private keepMethods()V
    .locals 1

    new-instance p0, Lcom/xiaomi/analytics/Tracker;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/xiaomi/analytics/Tracker;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static setUpdateEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/analytics/Analytics;->sUpdateEnable:Z

    return-void
.end method

.method public static setUseSystemAnalyticsOnly(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->isServiceBuiltIn(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "Analytics"

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "system analytics is not exist."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "use system analytics only"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/analytics/internal/SdkManager;->setUseSysAnalyticsOnly()V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/xiaomi/analytics/Analytics;->setUpdateEnable(Z)V

    return-void
.end method

.method public static trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/analytics/Analytics;->isSystemPackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/analytics/Analytics;->isPlatformSignature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "App is not allowed to use this method to track event, except system or platform signed apps. Use getTracker instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.analytics"

    const-string v2, "com.miui.analytics.EventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getContent()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    instance-of p1, p2, Lcom/xiaomi/analytics/AdAction;

    const-string p2, "type"

    if-eqz p1, :cond_4

    sget-object p1, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {p1}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {p1}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public deleteAllEvents()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->deleteAllEvents(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getClientExtraSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/16 v0, 0x1388

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Analytics;->getClientExtraSync(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClientExtraSync(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/analytics/Analytics$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/analytics/Analytics$1;-><init>(Lcom/xiaomi/analytics/Analytics;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/TaskRunner;->execute(Ljava/lang/Runnable;)V

    int-to-long v1, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->isPolicyReady(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    return-object p2

    :catch_0
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0
.end method

.method public getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/analytics/Analytics;->sTrackerFactory:Lcom/xiaomi/analytics/LoggerFactory;

    const-class v0, Lcom/xiaomi/analytics/Tracker;

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/LoggerFactory;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/xiaomi/analytics/BaseLogger;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/analytics/Tracker;

    return-object p0
.end method

.method public setDebugOn(Z)V
    .locals 0

    sput-boolean p1, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    iget-object p0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->setDebugOn(Z)V

    :cond_0
    return-void
.end method

.method public setDontUseSystemAnalytics(Z)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/internal/SdkManager;->setDontUseSystemAnalytics(Z)V

    return-void
.end method

.method public setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/internal/SdkManager;->setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V

    return-void
.end method

.method public trackAdAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaomi/analytics/Action;->addContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Analytics"

    const-string p2, "JavascriptInterface trackAdAction exception:"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public trackAdAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2, p3}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/xiaomi/analytics/Action;->addContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Analytics"

    const-string p2, "JavascriptInterface trackAdAction exception:"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public trackCustomAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/Actions;->newCustomAction()Lcom/xiaomi/analytics/CustomAction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->addContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Analytics"

    const-string p2, "JavascriptInterface trackCustomAction exception:"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public trackEventAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/analytics/Actions;->newEventAction(Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaomi/analytics/Action;->addContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Analytics"

    const-string p2, "JavascriptInterface trackEventAction exception:"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public trackEventAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2, p3}, Lcom/xiaomi/analytics/Actions;->newEventAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/xiaomi/analytics/Action;->addContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Analytics"

    const-string p2, "JavascriptInterface trackEventAction exception:"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

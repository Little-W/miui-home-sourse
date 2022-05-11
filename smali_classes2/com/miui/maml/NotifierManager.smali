.class public final Lcom/miui/maml/NotifierManager;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;,
        Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;,
        Lcom/miui/maml/NotifierManager$DarkModeNotifier;,
        Lcom/miui/maml/NotifierManager$ContentChangeNotifier;,
        Lcom/miui/maml/NotifierManager$MobileDataNotifier;,
        Lcom/miui/maml/NotifierManager$BroadcastNotifier;,
        Lcom/miui/maml/NotifierManager$BaseNotifier;,
        Lcom/miui/maml/NotifierManager$OnNotifyListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NotifierManager"

.field public static TYPE_CONFIG_CHANGE:Ljava/lang/String; = "ConfigChange"

.field public static TYPE_DARK_MODE:Ljava/lang/String; = "DarkMode"

.field public static TYPE_MOBILE_DATA:Ljava/lang/String; = "MobileData"

.field public static TYPE_TIME_CHANGED:Ljava/lang/String; = "TimeChanged"

.field public static TYPE_WIFI_STATE:Ljava/lang/String; = "WifiState"

.field private static sInstance:Lcom/miui/maml/NotifierManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/NotifierManager$BaseNotifier;",
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcom/miui/maml/NotifierManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static createNotifier(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/maml/NotifierManager$BaseNotifier;
    .locals 3

    const-string v0, "NotifierManager"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;

    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$MobileDataNotifier;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 51
    :cond_0
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance p0, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    const-string v2, "android.net.wifi.STATE_CHANGE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-object p0

    .line 56
    :cond_1
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance p0, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    const-string v1, "android.intent.action.TIME_SET"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-object p0

    .line 60
    :cond_2
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_DARK_MODE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    new-instance p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 62
    :cond_3
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_CONFIG_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    new-instance p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;

    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 66
    :cond_4
    new-instance v0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;

    invoke-direct {v0, p1, p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;
    .locals 2

    const-class v0, Lcom/miui/maml/NotifierManager;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/miui/maml/NotifierManager;->sInstance:Lcom/miui/maml/NotifierManager;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/miui/maml/NotifierManager;

    invoke-direct {v1, p0}, Lcom/miui/maml/NotifierManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/maml/NotifierManager;->sInstance:Lcom/miui/maml/NotifierManager;

    .line 73
    :cond_0
    sget-object p0, Lcom/miui/maml/NotifierManager;->sInstance:Lcom/miui/maml/NotifierManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private safeGet(Ljava/lang/String;)Lcom/miui/maml/NotifierManager$BaseNotifier;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/NotifierManager$BaseNotifier;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public acquireNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3

    const-string v0, "NotifierManager"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier;

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/miui/maml/NotifierManager;->createNotifier(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/maml/NotifierManager$BaseNotifier;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    monitor-exit v0

    return-void

    .line 90
    :cond_0
    invoke-virtual {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->init()V

    .line 91
    iget-object v2, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->addListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 93
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public pause(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lcom/miui/maml/NotifierManager$BaseNotifier;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->pauseListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I

    move-result p2

    if-nez p2, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->pause()V

    :cond_1
    return-void
.end method

.method public releaseNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3

    const-string v0, "NotifierManager"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier;

    if-nez v1, :cond_0

    .line 103
    monitor-exit v0

    return-void

    .line 105
    :cond_0
    invoke-virtual {v1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->removeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 106
    invoke-virtual {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->getRef()I

    move-result p2

    if-nez p2, :cond_1

    .line 107
    invoke-virtual {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->finish()V

    .line 108
    iget-object p2, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized resume(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lcom/miui/maml/NotifierManager$BaseNotifier;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->resumeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

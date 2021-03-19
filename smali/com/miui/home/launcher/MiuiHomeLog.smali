.class public Lcom/miui/home/launcher/MiuiHomeLog;
.super Ljava/lang/Object;
.source "MiuiHomeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;
    }
.end annotation


# static fields
.field private static sIsDebugLogEnable:Z

.field private static sRecordedLogHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/MiuiHomeLog;->sRecordedLogHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/miui/home/launcher/MiuiHomeLog;->sIsDebugLogEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static getRecordedLogHelper(Ljava/lang/String;)Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;
    .locals 2

    .line 109
    sget-object v0, Lcom/miui/home/launcher/MiuiHomeLog;->sRecordedLogHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;-><init>(Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/miui/home/launcher/MiuiHomeLog;->sRecordedLogHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/MiuiHomeLog;->sRecordedLogHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;

    :goto_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "is_miui_home_debug_log_enable"

    const/4 v1, 0x0

    .line 27
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/MiuiHomeLog;->sIsDebugLogEnable:Z

    const-string p0, "MiuiHomeLog"

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, sIsDebugLogEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/MiuiHomeLog;->sIsDebugLogEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printAndClearMessage(Ljava/lang/String;)V
    .locals 1

    .line 119
    sget-object v0, Lcom/miui/home/launcher/MiuiHomeLog;->sRecordedLogHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/miui/home/launcher/MiuiHomeLog;->sRecordedLogHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->printAll()V

    :cond_0
    return-void
.end method

.method public static saveRecorded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/miui/home/launcher/MiuiHomeLog;->getRecordedLogHelper(Ljava/lang/String;)Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;

    move-result-object p0

    .line 104
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->addMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugLogState(Z)V
    .locals 3

    const-string v0, "MiuiHomeLog"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDebugLogState, enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-boolean v0, Lcom/miui/home/launcher/MiuiHomeLog;->sIsDebugLogEnable:Z

    if-eq v0, p0, :cond_0

    .line 34
    sput-boolean p0, Lcom/miui/home/launcher/MiuiHomeLog;->sIsDebugLogEnable:Z

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string v0, "is_miui_home_debug_log_enable"

    sget-boolean v1, Lcom/miui/home/launcher/MiuiHomeLog;->sIsDebugLogEnable:Z

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static setHead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/miui/home/launcher/MiuiHomeLog;->getRecordedLogHelper(Ljava/lang/String;)Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;

    move-result-object p0

    .line 127
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->setHead(Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/miui/home/recents/RecentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/RecentsReceiver$_lancet;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final pkgsAllowCallClear:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "com.miui.home"

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.touchassistant"

    const-string v3, "com.android.snapshot"

    const-string v4, "com.android.keyguard"

    const-string v5, "com.android.systemui"

    const-string v6, "com.mi.android.globallauncher"

    const-string v7, "com.xiaomi.mihomemanager"

    const-string v8, "com.miui.voiceassist"

    const-string v9, "com.xiaomi.gameboosterglobal"

    const-string v10, "com.mi.android.globalminusscreen"

    const-string v11, "com.mi.globalminusscreen"

    const-string v12, "com.miui.personalassistant"

    .line 46
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/RecentsReceiver;->pkgsAllowCallClear:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/RecentsReceiver;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$001(Lcom/miui/home/recents/RecentsReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private doClear(Ljava/util/List;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/RecentsReceiver$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/miui/home/recents/RecentsReceiver$1;-><init>(Lcom/miui/home/recents/RecentsReceiver;Ljava/util/List;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 69
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.systemui.taskmanager.Clear"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 72
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecentsReceiver"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: senderName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver;->pkgsAllowCallClear:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 81
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/messages/CleanInRecentsEvents;

    invoke-direct {p2}, Lcom/miui/home/recents/messages/CleanInRecentsEvents;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v0, "show_toast"

    .line 83
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "protected_pkgnames"

    .line 85
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "protected_pkgnames"

    .line 86
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string v2, "com.miui.personalassistant"

    .line 88
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "com.miui.personalassistant"

    .line 89
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "com.miui.personalassistant"

    .line 90
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p1, "clean_type"

    const/4 v2, -0x1

    .line 92
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 93
    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/recents/RecentsReceiver;->removeAllTask(ZLjava/util/List;I)V

    goto :goto_1

    :cond_5
    const-string p2, "RecentsReceiver"

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allow to call clear"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method private showCleanEndMsg(J)V
    .locals 2

    .line 147
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/RecentsReceiver$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/RecentsReceiver$2;-><init>(Lcom/miui/home/recents/RecentsReceiver;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/RecentsReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/recents/RecentsReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public removeAllTask(ZLjava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 104
    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-string v2, "RecentsReceiver"

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeMemoryAtFirst:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 109
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    const-class v3, Landroid/app/ActivityManager;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "getMaxRecentTasksStatic"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6, v8}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v4, Lcom/miui/home/launcher/common/StaticCommon;->sUserHandleCurrentUserId:I

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRecentTasks(IILandroid/util/ArraySet;Z)Ljava/util/List;

    move-result-object v2

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_1
    invoke-direct {p0, v3, p3, v2}, Lcom/miui/home/recents/RecentsReceiver;->doClear(Ljava/util/List;ILjava/util/List;)V

    if-eqz p1, :cond_2

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsReceiver;->showCleanEndMsg(J)V

    :cond_2
    return-void
.end method

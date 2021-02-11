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
    .locals 11

    .line 38
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

    .line 43
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/RecentsReceiver;->pkgsAllowCallClear:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/RecentsReceiver;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$001(Lcom/miui/home/recents/RecentsReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
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

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/RecentsReceiver$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/miui/home/recents/RecentsReceiver$1;-><init>(Lcom/miui/home/recents/RecentsReceiver;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 63
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.systemui.taskmanager.Clear"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 66
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecentsReceiver"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: senderName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/RecentsReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver;->pkgsAllowCallClear:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 75
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/messages/CleanInRecentsEvents;

    invoke-direct {p2}, Lcom/miui/home/recents/messages/CleanInRecentsEvents;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p1, "show_toast"

    .line 77
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "protected_pkgnames"

    .line 78
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "clean_type"

    const/4 v2, -0x1

    .line 79
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 80
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/recents/RecentsReceiver;->removeAllTask(ZLjava/util/List;I)V

    goto :goto_1

    :cond_3
    const-string p2, "RecentsReceiver"

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allow to call clear"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/home/recents/RecentsReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private showCleanEndMsg(J)V
    .locals 13

    .line 173
    new-instance v6, Lmiui/widget/CircleProgressBar;

    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 174
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f080095

    aput v3, v1, v2

    new-array v0, v0, [I

    const v3, 0x7f080096

    aput v3, v0, v2

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v0, v2}, Lmiui/widget/CircleProgressBar;->setDrawablesForLevels([I[I[I)V

    .line 177
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {v6, v0}, Lmiui/widget/CircleProgressBar;->setMax(I)V

    .line 178
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    div-long/2addr v0, v2

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-virtual {v6, v0}, Lmiui/widget/CircleProgressBar;->setProgress(I)V

    const-string v0, "RecentsReceiver"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalPhysicalMemory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/RecentsReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/WindowManager;

    .line 182
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x7d6

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x51

    .line 188
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 189
    iget-object v1, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v1, 0x7f110007

    .line 190
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string v1, "privateFlags"

    .line 191
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const-string v5, "PRIVATE_FLAG_SHOW_FOR_ALL_USERS"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 192
    invoke-static {v4, v5, v7}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 191
    invoke-static {v0, v1, v2, v4}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 194
    invoke-interface {v3, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v7, Lcom/miui/home/recents/RecentsReceiver$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/RecentsReceiver$2;-><init>(Lcom/miui/home/recents/RecentsReceiver;Lmiui/widget/CircleProgressBar;Landroid/view/WindowManager;J)V

    const-wide/16 p1, 0xfa

    invoke-virtual {v6, v7, p1, p2}, Lmiui/widget/CircleProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

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

    .line 91
    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-string v2, "RecentsReceiver"

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeMemoryAtFirst:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/recents/RecentsReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 96
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

    invoke-virtual {v2, v3, v4, v7, v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v2

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 104
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_1
    invoke-direct {p0, v3, p3, v2}, Lcom/miui/home/recents/RecentsReceiver;->doClear(Ljava/util/List;ILjava/util/List;)V

    if-eqz p1, :cond_2

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsReceiver;->showCleanEndMsg(J)V

    :cond_2
    return-void
.end method

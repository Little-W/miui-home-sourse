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

    .line 44
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

    .line 49
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/RecentsReceiver;->pkgsAllowCallClear:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/RecentsReceiver;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/RecentsReceiver;->addKillConfigDataOnT(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$001(Lcom/miui/home/recents/RecentsReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/RecentsReceiver;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/RecentsReceiver;->addKillConfigDataOnS(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/recents/RecentsReceiver;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addKillConfigDataOnS(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;

    .line 187
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addKillConfigDataOnT(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;

    .line 157
    iget-object v1, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/RecentsModel;->isTaskInfoVisible(Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v1

    .line 158
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->hasMultipleTasks()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/recents/RecentsReceiver;->getWhiteList(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsReceiver;->getWhiteList(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 173
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4

    .line 175
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsReceiver;->getWhiteList(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 177
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
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
            "Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/RecentsReceiver$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/miui/home/recents/RecentsReceiver$1;-><init>(Lcom/miui/home/recents/RecentsReceiver;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getWhiteList(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_1
    iget-object v2, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 201
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 202
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 72
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.systemui.taskmanager.Clear"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 75
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: senderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver;->pkgsAllowCallClear:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
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

    :goto_0
    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/messages/CleanInRecentsEvents;

    invoke-direct {p1}, Lcom/miui/home/recents/messages/CleanInRecentsEvents;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "show_toast"

    .line 86
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "protected_pkgnames"

    .line 88
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string v2, "com.miui.personalassistant"

    .line 91
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 p1, -0x1

    const-string v2, "clean_type"

    .line 95
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 96
    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/recents/RecentsReceiver;->removeAllTask(ZLjava/util/List;I)V

    goto :goto_1

    .line 99
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allow to call clear"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private showCleanEndMsg(J)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

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

    .line 107
    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeMemoryAtFirst:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecentsReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 112
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    const-class v3, Landroid/app/ActivityManager;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "getMaxRecentTasksStatic"

    invoke-static {v3, v4, v8, v5, v7}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v4, Lcom/miui/home/launcher/common/StaticCommon;->sUserHandleCurrentUserId:I

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRecentTasks(IILandroid/util/ArraySet;Z)Ljava/util/List;

    move-result-object v2

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_1
    invoke-direct {p0, v3, p3, v2}, Lcom/miui/home/recents/RecentsReceiver;->doClear(Ljava/util/List;ILjava/util/List;)V

    if-eqz p1, :cond_2

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsReceiver;->showCleanEndMsg(J)V

    :cond_2
    return-void
.end method

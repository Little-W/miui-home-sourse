.class Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;
.super Ljava/lang/Object;
.source "HandoffControllerManager.java"


# instance fields
.field private mAllTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

.field private final mContext:Landroid/content/Context;

.field private final mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

.field private mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

.field private final mInnerCallback:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

.field private final mMiuiRelayController:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

.field private mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

.field private mPackageReceiver:Lcom/xiaomi/dist/handoff/system/PackageReceiver;

.field private final mTaskListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 36
    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    new-array v0, v0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 38
    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    .line 147
    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$w-WxA92rbIT0qx63GLLoo941pEY;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$w-WxA92rbIT0qx63GLLoo941pEY;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)V

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mInnerCallback:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    .line 48
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->getInstance()Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayController:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    .line 50
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-direct {v0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    return-void
.end method

.method private getAllHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    .locals 7

    const-string v0, "HandoffControllerManager"

    const-string v1, "getAllHandoffTask"

    .line 188
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 190
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 191
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 193
    invoke-virtual {v3}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppMeta()Lcom/xiaomi/dist/handoff/AppMeta;

    move-result-object v4

    if-nez v4, :cond_1

    .line 195
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v4}, Lcom/xiaomi/dist/handoff/AppMeta;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v4

    .line 199
    iget-object v5, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/xiaomi/dist/handoff/system/PackageReceiver;->checkPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    invoke-virtual {v3}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->isSupportAppLink()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/system/SystemPropertyUtil;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 205
    iget-object v3, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v4, v3

    const/4 v5, 0x0

    if-lez v4, :cond_3

    .line 206
    aget-object v2, v3, v5

    invoke-virtual {v2}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 208
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x2

    .line 209
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v4

    iget-object v6, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getShowMirrorType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v3, v2, :cond_4

    const-string v2, "miui relay show mirror"

    .line 210
    invoke-static {v0, v2}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$KYDkrqUIsyGrT7BYBUvSJJJDdIU;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$KYDkrqUIsyGrT7BYBUvSJJJDdIU;

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 213
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, v5, p0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    .line 215
    :cond_4
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    sget-object p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$PmgCbFLJsDrOsahNmxwCl_4qRe4;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$PmgCbFLJsDrOsahNmxwCl_4qRe4;

    invoke-interface {v1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :goto_1
    new-array p0, v5, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 219
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-object p0
.end method

.method private getProtocolTypeByTaskId(I)I
    .locals 7

    const-string v0, "HandoffControllerManager"

    const-string v1, "getProtocolTypeByTaskId"

    .line 223
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 226
    invoke-virtual {v6}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getHandoffTaskId()I

    move-result v6

    if-ne v6, p1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 231
    :goto_1
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v2, p0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v6, p0, v4

    .line 232
    invoke-virtual {v6}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getHandoffTaskId()I

    move-result v6

    if-ne v6, p1, :cond_2

    move v1, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    new-array p0, v5, [Ljava/lang/Object;

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "getProtocolTypeByTaskId, protocol type=%s"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method static synthetic lambda$getAllHandoffTask$4(Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)I
    .locals 2

    .line 212
    invoke-virtual {p1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getLastActiveTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getLastActiveTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static synthetic lambda$getAllHandoffTask$5(Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)I
    .locals 2

    .line 217
    invoke-virtual {p1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getLastActiveTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getLastActiveTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static synthetic lambda$reportLocalHandoffTaskUpdate$3(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    .line 181
    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;->onLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method private mergeTasks()Z
    .locals 11

    const-string v0, "HandoffControllerManager"

    const-string v1, "mergeTasks"

    .line 247
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "mergeTasks, result=false"

    .line 250
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 253
    :cond_0
    aget-object v1, v1, v3

    .line 254
    iget-object v2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v4, :cond_2

    aget-object v8, v2, v5

    .line 255
    invoke-virtual {v8}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppId()I

    move-result v9

    invoke-virtual {v1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppId()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 256
    invoke-virtual {v8}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 257
    invoke-virtual {v1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    .line 256
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-array v6, v3, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 258
    iput-object v6, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move v6, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v7, [Ljava/lang/Object;

    .line 262
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p0, v3

    const-string v1, "mergeTasks, result=%s"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method private reportLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 173
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HandoffControllerManager"

    const-string v2, "reportLocalHandoffTaskUpdate, all task=%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;

    .line 177
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 179
    invoke-interface {v2, p1}, Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;->onLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    goto :goto_0

    .line 181
    :cond_0
    new-instance v3, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$Ko75JuRLfS4GdCMNexys19WcYuI;

    invoke-direct {v3, v2, p1}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$Ko75JuRLfS4GdCMNexys19WcYuI;-><init>(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 184
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method close()V
    .locals 2

    const-string v0, "HandoffControllerManager"

    const-string v1, "close"

    .line 143
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->close()V

    return-void
.end method

.method public synthetic lambda$new$2$HandoffControllerManager(I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 2

    const-string v0, "HandoffControllerManager"

    const-string v1, "TaskListenerInner.onLocalHandoffTaskUpdate"

    .line 148
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v0, v0

    if-nez v0, :cond_0

    array-length v0, p2

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    :cond_1
    if-nez p1, :cond_3

    .line 156
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v0, v0

    if-nez v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_2

    return-void

    .line 159
    :cond_2
    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 161
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mergeTasks()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    return-void

    .line 164
    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->getAllHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p1

    .line 165
    iget-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mAllTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 168
    :cond_5
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mAllTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 169
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->reportLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method public synthetic lambda$queryActiveLocalHandoffTask$0$HandoffControllerManager()Lcom/xiaomi/dist/common/ResultDescriptor;
    .locals 6

    const-string v0, "handleQueryActiveLocalHandoffTask exception"

    const-string v1, "HandoffControllerManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-virtual {v4}, Lcom/xiaomi/dist/handoff/system/HandoffController;->queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iput-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    .line 59
    invoke-static {v1, v0, v5}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v4, v3, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 60
    iput-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 63
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayController:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-virtual {v4}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iput-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    .line 65
    invoke-static {v1, v0, v5}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 66
    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 68
    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mergeTasks()Z

    .line 69
    new-instance v0, Lcom/xiaomi/dist/handoff/system/result/HandoffResultDescriptor;

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->getAllHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0

    const-string v1, "success"

    invoke-direct {v0, p0, v2, v1}, Lcom/xiaomi/dist/handoff/system/result/HandoffResultDescriptor;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    return-object v0
.end method

.method public synthetic lambda$registerLocalHandoffSessionListener$1$HandoffControllerManager(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "HandoffControllerManager"

    const-string v1, "onPackageRemoved, packageName=%s"

    .line 82
    invoke-static {p1, v1, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->getAllHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mAllTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mAllTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 88
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->reportLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/xiaomi/dist/common/ResultDescriptor<",
            "[",
            "Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;",
            ">;>;"
        }
    .end annotation

    const-string v0, "HandoffControllerManager"

    const-string v1, "handleQueryActiveLocalHandoffTask"

    .line 54
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$xRBTXvoEoMOQO9WwD4UlViZMbtg;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$xRBTXvoEoMOQO9WwD4UlViZMbtg;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)V

    .line 72
    invoke-static {}, Lcom/xiaomi/dist/utils/Schedulers;->computation()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 55
    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method registerLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "HandoffControllerManager"

    const-string v1, "handleRegisterLocalHandoffSessionListener"

    .line 77
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iget-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mInnerCallback:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    invoke-virtual {p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController;->registerLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/system/TaskListenerInner;)V

    .line 80
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayController:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    iget-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mInnerCallback:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    invoke-virtual {p1, p2, v1}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->registerLocalHandoffSessionListener(Landroid/content/Context;Lcom/xiaomi/dist/handoff/system/TaskListenerInner;)V

    .line 81
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$FCalM_cxzbbehmMnn86sgvN0zfk;

    invoke-direct {p2, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$FCalM_cxzbbehmMnn86sgvN0zfk;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)V

    invoke-static {p1, p2}, Lcom/xiaomi/dist/handoff/system/PackageReceiver;->registerPackageRemoveCallback(Landroid/content/Context;Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;)Lcom/xiaomi/dist/handoff/system/PackageReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mPackageReceiver:Lcom/xiaomi/dist/handoff/system/PackageReceiver;

    const-string p1, "update handoff tasks after register"

    .line 90
    invoke-static {v0, p1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mAllTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->reportLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 2

    const-string v0, "HandoffControllerManager"

    const-string v1, "handleStartTransferSessionToLocal"

    .line 108
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->getProtocolTypeByTaskId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController;->startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayController:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->startTransferSessionToLocal(Landroid/content/Context;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    const-string p1, "handoff task not found"

    .line 115
    invoke-interface {p2, p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method unregisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;)V
    .locals 2

    const-string v0, "HandoffControllerManager"

    const-string v1, "handleUnregisterLocalHandoffSessionListener"

    .line 95
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-virtual {p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->unregisterLocalHandoffSessionListener()V

    .line 101
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mPackageReceiver:Lcom/xiaomi/dist/handoff/system/PackageReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "unregister package receiver error"

    .line 103
    invoke-static {v0, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

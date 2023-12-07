.class public Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;
.super Ljava/lang/Object;
.source "MaMlAuthManager.java"


# static fields
.field private static sAuthorityTimeInterval:J = 0x1499700L


# instance fields
.field private mAuthFailureHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mClientRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/launcher/overlay/client/LauncherClient;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCheckTime:J

.field private mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mResultsForRemove:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mLauncherRef:Ljava/lang/ref/WeakReference;

    .line 53
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mClientRef:Ljava/lang/ref/WeakReference;

    .line 54
    new-instance p1, Landroid/util/SparseArray;

    sget-object p2, Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;->STRATEGIES:[I

    array-length p2, p2

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mAuthFailureHandlers:Landroid/util/SparseArray;

    .line 55
    sget-object p1, Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;->STRATEGIES:[I

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, p1, v0

    .line 56
    iget-object v2, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mAuthFailureHandlers:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;->getFailureHandler(I)Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Landroid/util/SparseIntArray;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mResultsForRemove:Landroid/util/SparseIntArray;

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mResultsForRemove:Landroid/util/SparseIntArray;

    sget-object p1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_ASSET_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    invoke-virtual {p1}, Lmiui/drm/DrmManager$DrmResult;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private checkAuthority(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MaMlAuthManager"

    const-string p1, "Device is locked"

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getMaMlItems()Ljava/util/Set;

    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 80
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->checkAuthority(Ljava/util/Set;)V

    return-void
.end method

.method private checkAuthority(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/maml/MaMlWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$p4J4Vs_4hM246VUo48Dbqg9aiYw;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$p4J4Vs_4hM246VUo48Dbqg9aiYw;-><init>(Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$recheckAuthority$1(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lmiui/drm/DrmManager$DrmResult;Ljava/lang/String;)Lmiui/drm/DrmManager$DrmResult;
    .locals 10

    .line 179
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v8

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v9, "MaMlAuthManager"

    if-nez v0, :cond_0

    const-string p0, "recheckAuthority: title is null"

    .line 181
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    iget v4, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    iget-wide v5, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    long-to-int v5, v5

    const/4 v7, 0x0

    move-object v0, v8

    move-object v6, p2

    .line 184
    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/MamlutilKt;->downloadAndCopyRight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)I

    move-result v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadAndCopyRight result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    return-object p1

    .line 191
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {v8, p0, p2}, Lcom/miui/maml/widget/edit/MamlDrmUtilKt;->isLegal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object p0

    return-object p0
.end method

.method private queryCloudStrategy()I
    .locals 3

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/launcher/overlay/client/LauncherClient;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "MaMlAuthManager"

    const-string v1, "queryCloudStrategy skip, LauncherClient is null"

    .line 138
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "authority_fail_maml_strategy"

    .line 141
    invoke-virtual {p0, v2, v1, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "authority_fail_maml_action"

    .line 143
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private queryConfig()V
    .locals 7

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v1, "MaMlAuthManager"

    if-nez v0, :cond_0

    const-string p0, "queryConfig skip, LauncherClient is null"

    .line 149
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    const-string v3, "authority_config"

    .line 152
    invoke-virtual {v0, v3, v2, v2}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/32 v2, 0x1499700

    const-string v4, "authority_interval"

    .line 156
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->sAuthorityTimeInterval:J

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sAuthorityTimeInterval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->sAuthorityTimeInterval:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "authority_result_for_remove"

    .line 158
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mResultsForRemove:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 163
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v0, v3

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryConfig drmResult = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v5, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mResultsForRemove:Landroid/util/SparseIntArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private recheckAuthority(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ILjava/lang/String;Lmiui/drm/DrmManager$DrmResult;)V
    .locals 1

    .line 178
    new-instance v0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$zg6fjbUTD2_-eUfIq_khxmgpJ6I;

    invoke-direct {v0, p1, p4, p3}, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$zg6fjbUTD2_-eUfIq_khxmgpJ6I;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lmiui/drm/DrmManager$DrmResult;Ljava/lang/String;)V

    new-instance p3, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$Zrb0KAX4PJz0ZDTGcYzm967LXVQ;

    invoke-direct {p3, p0, p1, p2}, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$Zrb0KAX4PJz0ZDTGcYzm967LXVQ;-><init>(Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;I)V

    invoke-static {v0, p3}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private shouldCheck(Landroid/content/Context;)Z
    .locals 4

    .line 124
    iget-wide v0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mLastCheckTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "key_last_maml_auth_check_time"

    .line 125
    invoke-static {p1, v0, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mLastCheckTime:J

    .line 127
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mLastCheckTime:J

    sub-long/2addr v0, p0

    sget-wide p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->sAuthorityTimeInterval:J

    cmp-long p0, v0, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public synthetic lambda$checkAuthority$0$MaMlAuthManager(Ljava/util/Set;)V
    .locals 8

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    const-string v1, "MaMlAuthManager"

    if-nez v0, :cond_0

    const-string p0, "checkAuthority skip, Launcher is null"

    .line 92
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->shouldCheck(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 100
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->queryConfig()V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mLastCheckTime:J

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start checkAuthority : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mLastCheckTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->queryCloudStrategy()I

    move-result v2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAuthority strategy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 106
    iget v4, v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 109
    :cond_3
    iget-object v4, v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v5, v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v4, v5}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 110
    iget-object v5, v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {v0, v5, v4}, Lcom/miui/maml/widget/edit/MamlDrmUtilKt;->isLegal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v5

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAuthority result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmiui/drm/DrmManager$DrmResult;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->printDetail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v6, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    if-eq v5, v6, :cond_2

    .line 113
    invoke-direct {p0, v3, v2, v4, v5}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->recheckAuthority(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ILjava/lang/String;Lmiui/drm/DrmManager$DrmResult;)V

    goto :goto_0

    :cond_4
    const-string p1, "key_last_maml_auth_check_time"

    .line 116
    iget-wide v2, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mLastCheckTime:J

    invoke-static {v0, p1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "checkAuthority error"

    .line 118
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public synthetic lambda$recheckAuthority$2$MaMlAuthManager(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ILmiui/drm/DrmManager$DrmResult;)V
    .locals 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recheckAuthority result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lmiui/drm/DrmManager$DrmResult;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaMlAuthManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    if-ne p3, v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->supportAuth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object p0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mResultsForRemove:Landroid/util/SparseIntArray;

    invoke-virtual {p3}, Lmiui/drm/DrmManager$DrmResult;->ordinal()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    .line 199
    :cond_1
    invoke-static {p2}, Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;->getFailureHandler(I)Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;

    move-result-object p0

    .line 200
    invoke-interface {p0, v0, p1}, Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;->onFail(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->checkAuthority(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

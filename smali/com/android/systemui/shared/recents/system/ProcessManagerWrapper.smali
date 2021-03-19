.class public Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;
.super Ljava/lang/Object;
.source "ProcessManagerWrapper.java"


# static fields
.field public static final POLICY_FORCE_CLEAN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ProcessManagerHelper"

.field private static sRelatedPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.miui.fmservice"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v1, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    const-string v2, "com.miui.fm"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doForceClean(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "ProcessManagerHelper"

    const-string v1, "doForceClean"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Lmiui/process/ProcessConfig;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 98
    invoke-static {v0, p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->setWhiteListSafe(Lmiui/process/ProcessConfig;Ljava/util/List;)V

    .line 99
    invoke-static {v0}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ProcessManagerHelper"

    const-string v1, "doForceClean"

    .line 101
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static doGameClean(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "ProcessManagerHelper"

    const-string v1, "doGameClean"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lmiui/process/ProcessConfig;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmiui/process/ProcessConfig;-><init>(I)V

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 86
    invoke-static {v0, p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->setRemovingTaskIdListSafe(Lmiui/process/ProcessConfig;Ljava/util/List;)V

    .line 87
    invoke-static {v0, p1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->setWhiteListSafe(Lmiui/process/ProcessConfig;Ljava/util/List;)V

    .line 88
    invoke-static {v0}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ProcessManagerHelper"

    const-string v0, "doGameClean"

    .line 90
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static doOneKeyClean(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "ProcessManagerHelper"

    const-string v1, "doOneKeyClean"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lmiui/process/ProcessConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 51
    invoke-virtual {v0, v1}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 52
    invoke-static {v0, p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->setRemovingTaskIdListSafe(Lmiui/process/ProcessConfig;Ljava/util/List;)V

    .line 53
    invoke-static {v0, p1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->setWhiteListSafe(Lmiui/process/ProcessConfig;Ljava/util/List;)V

    .line 54
    invoke-static {v0}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ProcessManagerHelper"

    const-string v0, "doOneKeyClean"

    .line 56
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static doSwapUPClean(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 6

    :try_start_0
    const-string v0, "ProcessManagerHelper"

    const-string v1, "doSwapUPClean"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 65
    new-instance v2, Lmiui/process/ProcessConfig;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v4, 0x7

    invoke-direct {v2, v4, v0, v1, v3}, Lmiui/process/ProcessConfig;-><init>(ILjava/lang/String;II)V

    const/4 v3, 0x1

    .line 67
    invoke-virtual {v2, v3}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 68
    invoke-static {v2}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    .line 69
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->isHasRelatedPkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->getRelatedPkg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    new-instance v3, Lmiui/process/ProcessConfig;

    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-direct {v3, v4, v2, v1, v5}, Lmiui/process/ProcessConfig;-><init>(ILjava/lang/String;II)V

    .line 73
    invoke-static {v3}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ProcessManagerHelper"

    const-string v1, "doSwapUPClean"

    .line 77
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static getRelatedPkg(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static isHasRelatedPkg(Ljava/lang/String;)Z
    .locals 1

    .line 28
    sget-object v0, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLockedApplication(Ljava/lang/String;I)Z
    .locals 1

    .line 125
    :try_start_0
    invoke-static {p0, p1}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProcessManagerHelper"

    const-string v0, "isLockedApplication"

    .line 127
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static setRemovingTaskIdListSafe(Lmiui/process/ProcessConfig;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/process/ProcessConfig;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lmiui/process/ProcessConfig;->setRemovingTaskIdList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static setWhiteListSafe(Lmiui/process/ProcessConfig;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/process/ProcessConfig;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lmiui/process/ProcessConfig;->setWhiteList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static updateApplicationLockedState(Ljava/lang/String;IZ)Z
    .locals 1

    .line 109
    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    .line 110
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->isHasRelatedPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->getRelatedPkg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    invoke-static {v0, p1, p2}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ProcessManagerHelper"

    const-string p2, "updateApplicationLockedState"

    .line 117
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.class public Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;
.super Ljava/lang/Object;
.source "ProcessManagerWrapper.java"


# static fields
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

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.miui.fmservice"

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v1, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    const-string v2, "com.miui.fm"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "ProcessManagerHelper"

    if-eqz p0, :cond_3

    .line 38
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-string v1, "com.miui.home"

    .line 48
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lmiui/process/ProcessConfig;

    invoke-direct {v1, p3}, Lmiui/process/ProcessConfig;-><init>(I)V

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, v2}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 52
    invoke-virtual {v1, p0}, Lmiui/process/ProcessConfig;->setRemovingTaskIdList(Ljava/util/List;)V

    .line 53
    invoke-virtual {v1, p1}, Lmiui/process/ProcessConfig;->setWhiteList(Ljava/util/List;)V

    if-eqz p2, :cond_2

    .line 55
    const-class p0, Lmiui/process/ProcessConfig;

    const-string v4, "setWhiteListTaskId"

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v6, v2, [Ljava/lang/Class;

    const-class p1, Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p2, v7, v3

    move-object v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_2
    invoke-static {v1}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "doClean  processConfigPolicy="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "do not clean because removing task is empty"

    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 60
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doClean for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static doGameClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 87
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static doOneKeyClean(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_0

    .line 67
    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v3, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    iget-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doSwapUPClean(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOneKeyClean    removingTaskIds.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   tasks.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ProcessManagerHelper"

    .line 76
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 78
    invoke-static {v0, p1, p2, p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static doOneKeyClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 82
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static doSwapUPClean(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->killTaskByTaskKey(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->killRelatedPackage(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->killTaskByTaskKey(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->killTaskByTaskKey(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v0, v2}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->killRelatedPackage(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v1, p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->killRelatedPackage(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ProcessManagerHelper"

    const-string v1, "doSwapUPClean"

    .line 101
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static enableHomeSchedBoost(Z)V
    .locals 6

    :try_start_0
    const-string v0, "miui.process.IProcessManager"

    .line 164
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enableHomeSchedBoost"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 165
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 167
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ProcessManagerHelper"

    const-string v1, "ProcessManager error"

    .line 169
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getLockedApplication(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    :try_start_0
    invoke-static {p0}, Lmiui/process/ProcessManager;->getLockedApplication(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ProcessManagerHelper"

    const-string v1, "getLockedApplication"

    .line 156
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
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

    .line 33
    sget-object v0, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static isHasRelatedPkg(Ljava/lang/String;)Z
    .locals 1

    .line 29
    sget-object v0, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLockedApplication(Ljava/lang/String;I)Z
    .locals 1

    .line 145
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

    .line 147
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static killRelatedPackage(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 5

    .line 106
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->isHasRelatedPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->getRelatedPkg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    new-instance v1, Lmiui/process/ProcessConfig;

    const/4 v2, 0x7

    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget v4, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-direct {v1, v2, v0, v3, v4}, Lmiui/process/ProcessConfig;-><init>(ILjava/lang/String;II)V

    .line 110
    invoke-static {v1}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static killTaskByTaskKey(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 118
    new-instance v2, Lmiui/process/ProcessConfig;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0, v1, p0}, Lmiui/process/ProcessConfig;-><init>(ILjava/lang/String;II)V

    const/4 p0, 0x1

    .line 120
    invoke-virtual {v2, p0}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 121
    invoke-static {v2}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    return-object v0
.end method

.method public static updateApplicationLockedState(Ljava/lang/String;IZ)Z
    .locals 1

    .line 129
    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    .line 130
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->isHasRelatedPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->getRelatedPkg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
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

    const-string/jumbo p2, "updateApplicationLockedState"

    .line 137
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

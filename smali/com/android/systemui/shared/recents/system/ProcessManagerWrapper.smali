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
    .locals 7
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

    if-eqz p0, :cond_3

    .line 38
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-string v0, "com.miui.home"

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lmiui/process/ProcessConfig;

    invoke-direct {v0, p3}, Lmiui/process/ProcessConfig;-><init>(I)V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 52
    invoke-virtual {v0, p0}, Lmiui/process/ProcessConfig;->setRemovingTaskIdList(Ljava/util/List;)V

    .line 53
    invoke-virtual {v0, p1}, Lmiui/process/ProcessConfig;->setWhiteList(Ljava/util/List;)V

    if-eqz p2, :cond_2

    .line 55
    const-class p0, Lmiui/process/ProcessConfig;

    const-string v3, "setWhiteListTaskId"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Class;

    const-class p1, Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p2, v6, v2

    move-object v1, p0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_2
    invoke-static {v0}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    const-string p0, "ProcessManagerHelper"

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doClean  processConfigPolicy="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "ProcessManagerHelper"

    const-string p1, "do not clean because removing task is empty"

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ProcessManagerHelper"

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doClean for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
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

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 81
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

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

    if-eqz v2, :cond_2

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
    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "ProcessManagerHelper"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOneKeyClean    removingTaskIds.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   tasks.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 72
    invoke-static {v0, p1, p2, p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 76
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static doSwapUPClean(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 6

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 88
    new-instance v2, Lmiui/process/ProcessConfig;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v4, 0x7

    invoke-direct {v2, v4, v0, v1, v3}, Lmiui/process/ProcessConfig;-><init>(ILjava/lang/String;II)V

    const/4 v3, 0x1

    .line 90
    invoke-virtual {v2, v3}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 91
    invoke-static {v2}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    .line 92
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->isHasRelatedPkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->getRelatedPkg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    new-instance v3, Lmiui/process/ProcessConfig;

    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-direct {v3, v4, v2, v1, v5}, Lmiui/process/ProcessConfig;-><init>(ILjava/lang/String;II)V

    .line 96
    invoke-static {v3}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ProcessManagerHelper"

    const-string v1, "doSwapUPClean"

    .line 100
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static enableHomeSchedBoost(Z)V
    .locals 6

    :try_start_0
    const-string v0, "miui.process.IProcessManager"

    .line 143
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enableHomeSchedBoost"

    const/4 v2, 0x1

    .line 144
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 146
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

    .line 148
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
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

    .line 133
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

    .line 135
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
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

    .line 124
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

    .line 126
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static updateApplicationLockedState(Ljava/lang/String;IZ)Z
    .locals 1

    .line 108
    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    .line 109
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->isHasRelatedPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->getRelatedPkg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
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

    .line 116
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

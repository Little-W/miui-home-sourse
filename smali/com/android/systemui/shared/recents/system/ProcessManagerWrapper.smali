.class public Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;
.super Ljava/lang/Object;
.source "ProcessManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper$_lancet;
    }
.end annotation


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

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.miui.fmservice"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
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

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static doOneKeyClean(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    .line 37
    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Lmiui/process/ProcessConfig;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 40
    invoke-virtual {p0, v1}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 41
    invoke-virtual {p0, v0}, Lmiui/process/ProcessConfig;->setRemovingTaskIdList(Ljava/util/List;)V

    .line 42
    invoke-virtual {p0, p1}, Lmiui/process/ProcessConfig;->setWhiteList(Ljava/util/List;)V

    .line 43
    invoke-static {p0}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ProcessManagerHelper"

    const-string v0, "doOneKeyClean"

    .line 45
    invoke-static {p1, v0, p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static doSwapUPClean(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 6

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 53
    new-instance v2, Lmiui/process/ProcessConfig;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v4, 0x7

    invoke-direct {v2, v4, v0, v1, v3}, Lmiui/process/ProcessConfig;-><init>(ILjava/lang/String;II)V

    const/4 v3, 0x1

    .line 55
    invoke-virtual {v2, v3}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 56
    invoke-static {v2}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    .line 57
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->isHasRelatedPkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->getRelatedPkg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    new-instance v3, Lmiui/process/ProcessConfig;

    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-direct {v3, v4, v2, v1, v5}, Lmiui/process/ProcessConfig;-><init>(ILjava/lang/String;II)V

    .line 61
    invoke-static {v3}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ProcessManagerHelper"

    const-string v1, "doSwapUPClean"

    .line 65
    invoke-static {v0, v1, p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 30
    sget-object v0, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static isHasRelatedPkg(Ljava/lang/String;)Z
    .locals 1

    .line 26
    sget-object v0, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->sRelatedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLockedApplication(Ljava/lang/String;I)Z
    .locals 1

    .line 89
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

    .line 91
    invoke-static {p1, v0, p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static updateApplicationLockedState(Ljava/lang/String;IZ)Z
    .locals 1

    .line 73
    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    .line 74
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->isHasRelatedPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->getRelatedPkg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
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

    .line 81
    invoke-static {p1, p2, p0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

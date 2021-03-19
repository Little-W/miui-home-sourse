.class public Lcom/miui/home/launcher/common/SecurityHide;
.super Ljava/lang/Object;
.source "SecurityHide.java"


# static fields
.field private static mHideItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;"
        }
    .end annotation
.end field

.field private static sConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sQueryFunc:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHideItemList:Ljava/util/List;

    .line 25
    sget-object v0, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$nDOJbHmPARp8zjGd80r7UGnLND8;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$nDOJbHmPARp8zjGd80r7UGnLND8;

    sput-object v0, Lcom/miui/home/launcher/common/SecurityHide;->sQueryFunc:Ljava/util/function/Function;

    .line 59
    sget-object v0, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$_gJpcmCzum8mOP42OAaH9wE5CaY;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$_gJpcmCzum8mOP42OAaH9wE5CaY;

    sput-object v0, Lcom/miui/home/launcher/common/SecurityHide;->sConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public static getHideItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHideItemList:Ljava/util/List;

    return-object v0
.end method

.method public static getSecurityHideItems()V
    .locals 3

    .line 74
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 75
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHideItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->sConsumer:Ljava/util/function/Consumer;

    sget-object v1, Lcom/miui/home/launcher/common/SecurityHide;->sQueryFunc:Ljava/util/function/Function;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static getSecurityHideItemsAsync()V
    .locals 3

    .line 66
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHideItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->sQueryFunc:Ljava/util/function/Function;

    sget-object v1, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-Z0r6jrrLJAfGR7bExL-DIZXutU;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-Z0r6jrrLJAfGR7bExL-DIZXutU;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getSecurityHideItemsAsync$2(Ljava/util/ArrayList;)V
    .locals 1

    .line 68
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->sConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/SecurityHideMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/SecurityHideMessage;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 11

    .line 27
    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "security"

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 32
    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v3

    .line 33
    const-class v4, Ljava/util/List;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getAllPrivacyApps"

    new-array v9, v5, [Ljava/lang/Object;

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    .line 34
    invoke-static {v6, v1, v7, v4, v9}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_1

    .line 37
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 38
    new-instance v9, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    invoke-direct {v9, v7, v2}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 39
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getAllGameStorageApps"

    new-array v5, v5, [Ljava/lang/Object;

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v8

    .line 43
    invoke-static {v6, v1, v7, v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 45
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 46
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 47
    new-instance v5, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    invoke-direct {v5, v4, v2}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 48
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.SecurityHide"

    const-string v1, "getSecurityHideItems"

    .line 54
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$static$1(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHideItemList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

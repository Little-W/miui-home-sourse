.class public final Lcom/miui/home/launcher/HideAppList;
.super Ljava/lang/Object;
.source "HideAppList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/HideAppList$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHideAppList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HideAppList.kt\ncom/miui/home/launcher/HideAppList\n*L\n1#1,111:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/HideAppList$Companion;

.field private static final sHideAppList$delegate:Lkotlin/Lazy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mHiddenAppDynamicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/bean/HideAppBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/HideAppList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/HideAppList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    .line 22
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;->INSTANCE:Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/HideAppList;->sHideAppList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    const-string v0, "HideAppList"

    .line 18
    iput-object v0, p0, Lcom/miui/home/launcher/HideAppList;->TAG:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HideAppList$Companion;->getHideAppString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/HideAppList;->getHideAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/home/launcher/HideAppList;->isFirstCreateSecondSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 83
    new-instance v3, Lcom/mi/google/gson/Gson;

    invoke-direct {v3}, Lcom/mi/google/gson/Gson;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/HideAppList$Companion;->putHideAppToList(Landroid/content/Context;Ljava/lang/String;)Z

    .line 87
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/HideAppList;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSHideAppList$cp()Lkotlin/Lazy;
    .locals 1

    .line 16
    sget-object v0, Lcom/miui/home/launcher/HideAppList;->sHideAppList$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final getHideAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/bean/HideAppBean;",
            ">;"
        }
    .end annotation

    .line 38
    move-object p0, p2

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_2

    .line 40
    :try_start_0
    new-instance p0, Lcom/mi/google/gson/Gson;

    invoke-direct {p0}, Lcom/mi/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/HideAppList$getHideAppList$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/HideAppList$getHideAppList$1;-><init>()V

    invoke-virtual {v0}, Lcom/miui/home/launcher/HideAppList$getHideAppList$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Gson().fromJson(appList,\u2026ideAppBean?>?>() {}.type)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 42
    :catchall_0
    sget-object p0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/HideAppList$Companion;->putHideAppToList(Landroid/content/Context;Ljava/lang/String;)Z

    .line 43
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    return-object p0

    .line 46
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static final getHideAppString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/HideAppList$Companion;->getHideAppString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final isFirstCreateSecondSpace()Z
    .locals 2

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSecondSpace()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    const-string v1, "app_state_db_need_init"

    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final declared-synchronized addHiddenApp(Landroid/content/Context;Lcom/miui/home/launcher/bean/HideAppBean;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " addHiddenApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getSerialNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/HideAppList;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object p2

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "Application.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    .line 60
    invoke-virtual {p0, v0, p2, v1}, Lcom/miui/home/launcher/HideAppList;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherModel;)V

    .line 62
    sget-object p2, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    new-instance v0, Lcom/mi/google/gson/Gson;

    invoke-direct {v0}, Lcom/mi/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/launcher/HideAppList$Companion;->putHideAppToList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized deleteHiddenApp(Landroid/content/Context;Lcom/miui/home/launcher/bean/HideAppBean;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " deleteHiddenApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getSerialNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/HideAppList;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object p2

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "Application.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    .line 70
    invoke-virtual {p0, v0, p2, v1}, Lcom/miui/home/launcher/HideAppList;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherModel;)V

    .line 72
    sget-object p2, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    new-instance v0, Lcom/mi/google/gson/Gson;

    invoke-direct {v0}, Lcom/mi/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/launcher/HideAppList$Companion;->putHideAppToList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 74
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 2

    const-string p0, "serialNumber"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    .line 103
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    const-string p1, "UserManagerCompat.getIns\u2026er(serialNumber.toLong())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isAppHided(Lcom/miui/home/launcher/bean/HideAppBean;)Z
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherModel;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 92
    new-instance p0, Lcom/miui/home/launcher/HideAppList$onPackageChanged$$inlined$let$lambda$1;

    invoke-direct {p0, p3, p1, p2}, Lcom/miui/home/launcher/HideAppList$onPackageChanged$$inlined$let$lambda$1;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Landroid/os/UserHandle;)V

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

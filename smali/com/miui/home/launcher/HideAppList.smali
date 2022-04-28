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
    value = "SMAP\nHideAppList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HideAppList.kt\ncom/miui/home/launcher/HideAppList\n*L\n1#1,84:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/HideAppList$Companion;

.field private static final sHideAppList$delegate:Lkotlin/Lazy;


# instance fields
.field private mHiddenAppDynamicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/bean/HideAppBean;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenAppList:Ljava/util/ArrayList;
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

    .line 16
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;->INSTANCE:Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/HideAppList;->sHideAppList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppList:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/HideAppList;->getHideAppList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppList:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/HideAppList;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSHideAppList$cp()Lkotlin/Lazy;
    .locals 1

    .line 10
    sget-object v0, Lcom/miui/home/launcher/HideAppList;->sHideAppList$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final getHideAppList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/bean/HideAppBean;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HideAppList$Companion;->getHideAppString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 33
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 35
    :try_start_0
    new-instance v1, Lcom/mi/google/gson/Gson;

    invoke-direct {v1}, Lcom/mi/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/miui/home/launcher/HideAppList$getHideAppList$1;

    invoke-direct {v2}, Lcom/miui/home/launcher/HideAppList$getHideAppList$1;-><init>()V

    invoke-virtual {v2}, Lcom/miui/home/launcher/HideAppList$getHideAppList$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Gson().fromJson(appList,\u2026ideAppBean?>?>() {}.type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 37
    :catch_0
    sget-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/HideAppList$Companion;->putHideAppToList(Landroid/content/Context;Ljava/lang/String;)Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    return-object v0

    .line 41
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public static final getHideAppString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/HideAppList$Companion;->getHideAppString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized addHiddenApp(Landroid/content/Context;Lcom/miui/home/launcher/bean/HideAppBean;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
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

    .line 50
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

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 61
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

    .line 63
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getAllHiddenAppList()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/bean/HideAppBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppList:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v1, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isAppHided(Lcom/miui/home/launcher/bean/HideAppBean;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized updateHiddenApp()V
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

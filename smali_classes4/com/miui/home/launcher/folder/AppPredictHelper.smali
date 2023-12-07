.class public final Lcom/miui/home/launcher/folder/AppPredictHelper;
.super Ljava/lang/Object;
.source "AppPredictHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppPredictHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppPredictHelper.kt\ncom/miui/home/launcher/folder/AppPredictHelper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n13571#2,3:193\n734#3:196\n825#3,2:197\n1819#3,2:199\n1819#3,2:201\n*E\n*S KotlinDebug\n*F\n+ 1 AppPredictHelper.kt\ncom/miui/home/launcher/folder/AppPredictHelper\n*L\n100#1,3:193\n100#1:196\n100#1,2:197\n127#1,2:199\n153#1,2:201\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

.field private static mAppPredictService:Lcom/miui/apppredict/IAppPredict;

.field private static final mAppPredictServiceConnection:Lcom/miui/home/launcher/folder/AppPredictHelper$mAppPredictServiceConnection$1;

.field private static mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/folder/AppPredictUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPredictInfoList:Lcom/miui/home/launcher/folder/AppPredictList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/miui/home/launcher/folder/AppPredictHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/folder/AppPredictHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    new-instance v0, Lcom/miui/home/launcher/folder/AppPredictHelper$mAppPredictServiceConnection$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/folder/AppPredictHelper$mAppPredictServiceConnection$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->mAppPredictServiceConnection:Lcom/miui/home/launcher/folder/AppPredictHelper$mAppPredictServiceConnection$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppPredictFromServiceInternal(Lcom/miui/home/launcher/folder/AppPredictHelper;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->getAppPredictFromServiceInternal(Z)V

    return-void
.end method

.method public static final synthetic access$getMPredictInfoList$p(Lcom/miui/home/launcher/folder/AppPredictHelper;)Lcom/miui/home/launcher/folder/AppPredictList;
    .locals 0

    .line 24
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->mPredictInfoList:Lcom/miui/home/launcher/folder/AppPredictList;

    return-object p0
.end method

.method public static final synthetic access$setMAppPredictService$p(Lcom/miui/home/launcher/folder/AppPredictHelper;Lcom/miui/apppredict/IAppPredict;)V
    .locals 0

    .line 24
    sput-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper;->mAppPredictService:Lcom/miui/apppredict/IAppPredict;

    return-void
.end method

.method public static final synthetic access$setMPredictInfoList$p(Lcom/miui/home/launcher/folder/AppPredictHelper;Lcom/miui/home/launcher/folder/AppPredictList;)V
    .locals 0

    .line 24
    sput-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper;->mPredictInfoList:Lcom/miui/home/launcher/folder/AppPredictList;

    return-void
.end method

.method public static final synthetic access$updateAppPredict(Lcom/miui/home/launcher/folder/AppPredictHelper;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/AppPredictHelper;->updateAppPredict()V

    return-void
.end method

.method private final addUnFindShortcutInfoToList(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 127
    check-cast p1, Ljava/lang/Iterable;

    .line 199
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 128
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final connectToService(Landroid/content/Context;)V
    .locals 3

    .line 71
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.securitycenter"

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.apppredict.service.AiService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    sget-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->mAppPredictServiceConnection:Lcom/miui/home/launcher/folder/AppPredictHelper$mAppPredictServiceConnection$1;

    check-cast v0, Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private final filterPredictAppSorted(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 100
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->mPredictInfoList:Lcom/miui/home/launcher/folder/AppPredictList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/AppPredictList;->getApp_list()[Lcom/miui/home/launcher/folder/AppPredictItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 194
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 102
    move-object v7, p0

    check-cast v7, Ljava/util/Map;

    new-instance v8, Lkotlin/Pair;

    invoke-virtual {v5}, Lcom/miui/home/launcher/folder/AppPredictItem;->getPackage_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/miui/home/launcher/folder/AppPredictItem;->is_xspace()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    .line 104
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 197
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 105
    new-instance v5, Lkotlin/Pair;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    :cond_3
    check-cast v1, Ljava/util/List;

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 196
    :goto_3
    check-cast v1, Ljava/lang/Iterable;

    .line 107
    new-instance v0, Lcom/miui/home/launcher/folder/AppPredictHelper$filterPredictAppSorted$$inlined$apply$lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper$filterPredictAppSorted$$inlined$apply$lambda$1;-><init>(Landroid/util/ArrayMap;Ljava/util/List;)V

    check-cast v0, Ljava/util/Comparator;

    .line 106
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "AppPredictHelper"

    const-string p1, "error occur while run filterPredictAppSorted !"

    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getAppPredictFromServiceInternal(Z)V
    .locals 2

    const-string v0, "com.miui.home"

    .line 47
    sget-object v1, Lcom/miui/home/launcher/folder/AppPredictHelper;->mAppPredictService:Lcom/miui/apppredict/IAppPredict;

    if-eqz v1, :cond_2

    if-nez v1, :cond_0

    .line 49
    :try_start_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, v0}, Lcom/miui/apppredict/IAppPredict;->register(Ljava/lang/String;)V

    .line 50
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->mAppPredictService:Lcom/miui/apppredict/IAppPredict;

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 52
    :cond_1
    new-instance p1, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1;

    invoke-direct {p1}, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1;-><init>()V

    check-cast p1, Lcom/miui/apppredict/IAppPredictCallBack;

    .line 50
    invoke-interface {p0, v0, p1}, Lcom/miui/apppredict/IAppPredict;->getAppPredictList(Ljava/lang/String;Lcom/miui/apppredict/IAppPredictCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 63
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, "Application.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->connectToService(Landroid/content/Context;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final updateAppPredict()V
    .locals 1

    .line 153
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 154
    check-cast p0, Ljava/lang/Iterable;

    .line 201
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 155
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/AppPredictUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/home/launcher/folder/AppPredictUpdateListener;->onAppPredictUpdate()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final addAppPredictListener(Lcom/miui/home/launcher/folder/AppPredictUpdateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->containsOrNot(Lcom/miui/home/launcher/folder/AppPredictUpdateListener;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-nez p0, :cond_0

    .line 136
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 137
    sget-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final containsOrNot(Lcom/miui/home/launcher/folder/AppPredictUpdateListener;)Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/folder/AppPredictUpdateListener;",
            ")",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/folder/AppPredictUpdateListener;",
            ">;"
        }
    .end annotation

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 163
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/folder/AppPredictUpdateListener;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAppPredictForFolder(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "folderItemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->filterPredictAppSorted(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/folder/AppPredictHelper;->addUnFindShortcutInfoToList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 87
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getAppPredictFromService(Z)V
    .locals 0

    .line 41
    new-instance p0, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromService$1;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromService$1;-><init>(Z)V

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeAppPredictListener(Lcom/miui/home/launcher/folder/AppPredictUpdateListener;)Z
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->containsOrNot(Lcom/miui/home/launcher/folder/AppPredictUpdateListener;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 147
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

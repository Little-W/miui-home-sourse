.class public Lcom/miui/home/launcher/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;,
        Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;,
        Lcom/miui/home/launcher/LauncherModel$CallbackTask;,
        Lcom/miui/home/launcher/LauncherModel$LoaderTask;,
        Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;,
        Lcom/miui/home/launcher/LauncherModel$Callbacks;,
        Lcom/miui/home/launcher/LauncherModel$PackageAndUser;,
        Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;,
        Lcom/miui/home/launcher/LauncherModel$_lancet;
    }
.end annotation


# static fields
.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

.field private final mAllAppsListLock:Ljava/lang/Object;

.field private final mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

.field private volatile mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/miui/home/library/utils/DeferredHandler;

.field private final mIconCache:Lcom/miui/home/launcher/IconCache;

.field private final mLauncherApplication:Lcom/miui/home/launcher/Application;

.field private mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

.field final mLoadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private mModelLoaded:Z

.field final mProgressingPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/progress/ProgressShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReadLabelFromDB:Z

.field mSecurityHideMessageHandler:Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

.field private final mUiExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 173
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 175
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/launcher/AppFilter;)V
    .locals 2

    .line 309
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/miui/home/library/utils/DeferredHandler;

    invoke-direct {v0}, Lcom/miui/home/library/utils/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/library/utils/DeferredHandler;

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel;->mReadLabelFromDB:Z

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    .line 206
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mSecurityHideMessageHandler:Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

    .line 320
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;-><init>(Lcom/miui/home/launcher/LauncherModel;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    .line 2698
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mUiExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 310
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    .line 311
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 312
    new-instance p2, Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-direct {p2, p1, v0, p3}, Lcom/miui/home/launcher/AllAppsList;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/launcher/AppFilter;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    .line 313
    new-instance p2, Lcom/miui/home/launcher/AllCategoryList;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/AllCategoryList;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcuts(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllCategoryList;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/MainThreadExecutor;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mUiExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/miui/home/launcher/LauncherModel;Z)Z
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mReadLabelFromDB:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/IconCache;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/library/utils/DeferredHandler;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/home/launcher/LauncherModel;)Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/miui/home/launcher/LauncherModel;Z)Z
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/home/launcher/LauncherModel;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel;->loadFreeStyleNow()V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/miui/home/launcher/LauncherModel;Z)Z
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mModelLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel;->logLauncherAppsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkBrowserVersionAllowSearchBar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/Runnable;J)V
    .locals 0

    .line 152
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    return-object p0
.end method

.method static applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 546
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 557
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkBrowserVersionAllowSearchBar(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.android.browser"

    .line 460
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 461
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->initData(Z)V

    :cond_0
    return-void
.end method

.method private createShortcutInfo(ILandroid/content/Intent;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_4

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    .line 2526
    invoke-static {p2}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isElderlyManShortcut(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2527
    new-instance p1, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;

    invoke-direct {p1}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;-><init>()V

    return-object p1

    .line 2529
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p1}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    return-object p1

    .line 2524
    :cond_1
    new-instance p1, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;

    invoke-direct {p1}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;-><init>()V

    return-object p1

    .line 2518
    :cond_2
    invoke-static {p2}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isElderlyManShortcut(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2519
    new-instance p1, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;

    invoke-direct {p1}, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;-><init>()V

    return-object p1

    .line 2521
    :cond_3
    new-instance p1, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-direct {p1}, Lcom/miui/home/launcher/DeepShortcutInfo;-><init>()V

    return-object p1

    .line 2516
    :cond_4
    new-instance p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-direct {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;-><init>()V

    return-object p1
.end method

.method public static deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 6

    .line 795
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Launcher.Model"

    const-string v2, "Deleting item from database (%d, %d) of screen %d"

    const/4 v3, 0x3

    .line 798
    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-wide v4, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher.Model"

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteItemFromDatabase, item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$5;

    invoke-direct {v1, v0, p1, p0}, Lcom/miui/home/launcher/LauncherModel$5;-><init>(Landroid/content/ContentResolver;Lcom/miui/home/launcher/ItemInfo;Landroid/content/Context;)V

    .line 813
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 820
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 821
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$6;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel$6;-><init>(Landroid/content/ContentResolver;Lcom/miui/home/launcher/FolderInfo;)V

    .line 826
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static dropDragObjectIntoFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 562
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 563
    invoke-virtual {v11, v0}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v7

    const/4 v14, 0x0

    if-eqz v9, :cond_0

    const-string v1, "Launcher.Model"

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropDragObjectIntoFolder, folder creater from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {v11, v9, v12}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 568
    iget-wide v2, v11, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    add-int/lit8 v15, v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Launcher.Model"

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropDragObjectIntoFolder, folder creater to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {v9, v14}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    move/from16 v22, v15

    goto :goto_0

    :cond_0
    move/from16 v22, v7

    .line 576
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 577
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v12, v2, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToFolder(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Launcher.Model"

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropDragObjectIntoFolder, folder creater drag from="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v11, v3, v12}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 580
    iget-wide v4, v1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v2, :cond_2

    .line 581
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    move/from16 v2, v22

    goto :goto_1

    .line 583
    :cond_2
    iget-wide v4, v11, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v19, -0x1

    const/16 v21, -0x1

    add-int/lit8 v2, v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v16, v1

    move-wide/from16 v17, v4

    invoke-static/range {v16 .. v23}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v4, "Launcher.Model"

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dropDragObjectIntoFolder, folder creater drag to="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {v3, v14}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    const/4 v3, 0x1

    move/from16 v22, v2

    goto :goto_2

    :cond_3
    move v3, v14

    :goto_2
    if-eqz v3, :cond_4

    .line 593
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 595
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v10, v3}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 596
    :cond_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 597
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v1, v13}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 598
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 600
    :cond_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private fillShortcutInfoFromIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 5

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 2575
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 2576
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2577
    iput v0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 2579
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "profile"

    .line 2580
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "profile"

    .line 2581
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 2582
    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setUser(Landroid/os/UserHandle;)V

    .line 2584
    :cond_0
    iget-object v1, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    const-string p1, "Launcher.Model"

    const-string p2, "Can\'t construct ShorcutInfo with null intent"

    .line 2586
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2590
    :cond_1
    instance-of v1, p3, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2591
    move-object v1, p3

    check-cast v1, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;->setIsElderlyManShortcut(Z)V

    const-string v3, "is_default_head"

    .line 2592
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "is_default_head"

    .line 2594
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2593
    invoke-interface {v1, v3}, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;->setUseContactColorizedPortrait(Z)V

    :cond_2
    const-string v1, "com.miui.action.TOGGLE_SHURTCUT"

    .line 2598
    iget-object v3, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2599
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadToggleInfo(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 2600
    iput p1, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    goto/16 :goto_2

    :cond_3
    const-string v1, "com.miui.action.DOWNLOADING_APP"

    .line 2601
    iget-object v3, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p1, 0x4

    .line 2602
    iput p1, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const-string p1, "iconUri"

    .line 2603
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2604
    instance-of p2, p1, Landroid/net/Uri;

    if-eqz p2, :cond_9

    instance-of p2, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p2, :cond_9

    .line 2605
    check-cast p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "android.intent.extra.shortcut.ICON"

    .line 2608
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 2611
    instance-of v4, v1, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 2612
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v3, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2613
    iput v2, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    goto :goto_0

    :cond_5
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 2615
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2616
    instance-of v2, v1, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_6

    .line 2618
    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/content/Intent$ShortcutIconResource;

    iput-object v2, p3, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2619
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2620
    iget-object v2, p3, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 2622
    iget-object v2, p3, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2623
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Launcher.Model"

    .line 2625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load shortcut icon: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    if-nez v3, :cond_7

    .line 2631
    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->getFallbackIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_7
    const-string p1, "android.intent.extra.CUSTOMIZED_ICON_SHORTCUT"

    .line 2632
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2633
    iget p1, p3, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p3, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 2635
    :cond_8
    :goto_1
    invoke-virtual {p3, v3}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static getAllScreens(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation

    .line 674
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "screenOrder ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 683
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 686
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "screenType"

    .line 687
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 688
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 689
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 691
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 695
    :goto_1
    new-instance v6, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v3, v4, v7, v5}, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;-><init>(JII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    .line 699
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_4
    throw v0
.end method

.method private static getItemPostionValues(Lcom/miui/home/launcher/ItemInfo;)Landroid/content/ContentValues;
    .locals 4

    .line 644
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "container"

    .line 645
    iget-wide v2, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "cellX"

    .line 646
    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cellY"

    .line 647
    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemInfo;->onAddSpan(Landroid/content/ContentValues;)V

    const-string v1, "screen"

    .line 649
    iget-wide v2, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static getWorkerLooper()Landroid/os/Looper;
    .locals 1

    .line 2738
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private handleSlideUpGestureSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.newhome"

    .line 2678
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/home/settings/LauncherGestureController;->isSlideUpAppInstalling()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "launcher_slideup_gesture"

    const-string v0, "content_center"

    .line 2679
    invoke-static {p1, p2, v0}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2680
    invoke-static {p2}, Lcom/miui/home/settings/LauncherGestureController;->putSlideUpAppInstalling(Z)V

    .line 2681
    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationConfig;->initFeed(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z
    .locals 1

    .line 899
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onReceiveBackground$0(Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1058
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private loadFreeStyleNow()V
    .locals 4

    .line 2666
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->load()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v0

    .line 2667
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    :goto_0
    if-eqz v1, :cond_1

    .line 2669
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/library/utils/DeferredHandler;

    new-instance v3, Lcom/miui/home/launcher/LauncherModel$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/home/launcher/LauncherModel$11;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 2321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2322
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/Utilities;->getStringForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2324
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_3

    .line 2325
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2327
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2328
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 v3, 0x3a

    .line 2331
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 2333
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object p0, v4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2336
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p0, v4

    :goto_0
    if-eqz p0, :cond_3

    .line 2340
    invoke-virtual {p0, v1, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2342
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method private logLauncherAppsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    const-string v0, "Launcher.Model"

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LauncherAppsCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;
    .locals 0

    .line 632
    iput p6, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 633
    iput p7, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 634
    iput-wide p1, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 635
    iput-wide p3, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 636
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->getItemPostionValues(Lcom/miui/home/launcher/ItemInfo;)Landroid/content/ContentValues;

    move-result-object p1

    .line 637
    iget-wide p2, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 638
    invoke-static {p2, p3}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 639
    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 640
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V
    .locals 0

    .line 622
    iput p6, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 623
    iput p7, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 624
    iput-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 625
    iput-wide p4, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 626
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->getItemPostionValues(Lcom/miui/home/launcher/ItemInfo;)Landroid/content/ContentValues;

    move-result-object p2

    .line 627
    iget-wide p3, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, p3, p4, p2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method private onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 2276
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->makeUniquelyShortcutKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2278
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2279
    instance-of v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v1, :cond_0

    .line 2280
    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/LauncherModel;->addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    :cond_0
    return-void
.end method

.method private onLoadShortcuts(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 2270
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2271
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "Launcher.Model"

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 852
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 853
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/LauncherModel$7;-><init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 854
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/library/compat/UserManagerCompat;->enableAndResetCache()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 855
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.USER"

    .line 856
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 860
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 861
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private onRemoveItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    .line 2286
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2287
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2288
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->makeUniquelyShortcutKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2289
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2290
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private onRemoveItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 2296
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 2297
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->onRemovePackage(Lcom/miui/home/launcher/AppInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRemovePackage(Lcom/miui/home/launcher/AppInfo;)V
    .locals 4

    .line 2302
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2304
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2305
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2306
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2309
    :cond_1
    iget v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-eqz v2, :cond_2

    .line 2310
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2311
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 2315
    :cond_3
    iget-object v0, p1, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2316
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private resetLoadedState()Z
    .locals 3

    .line 1070
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel;->stopLoaderLocked()Z

    move-result v1

    const/4 v2, 0x0

    .line 1072
    iput-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel;->mModelLoaded:Z

    .line 1073
    iput-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z

    .line 1074
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1075
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static resizeItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;IIII)V
    .locals 4

    .line 490
    iput p4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 491
    iput p5, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 492
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 493
    iput p3, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 495
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "container"

    .line 496
    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "spanX"

    .line 497
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "spanY"

    .line 498
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "cellX"

    .line 499
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "cellY"

    .line 500
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 482
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;J)V
    .locals 2

    .line 474
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 475
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 477
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private setIcon(Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2484
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/miui/home/launcher/common/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2485
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private stopLoaderLocked()Z
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v1

    .line 1087
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->stopLocked()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static updateFolderItems(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 11

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 607
    iget-wide v4, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    iget v9, v2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v10, v2, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    move-object v3, v2

    invoke-static/range {v3 .. v10}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Launcher.Model"

    .line 609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFolderItems, info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 613
    sget-object p1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method static updateItemFlagAndLaunchCount(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    .line 722
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "launchCount"

    .line 723
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getLaunchCounts()[I

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemFlags"

    .line 724
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    const/4 p0, 0x1

    return p0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 0

    .line 505
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object p1

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 507
    new-instance p2, Lcom/miui/home/launcher/LauncherModel$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/miui/home/launcher/LauncherModel$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 516
    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 6

    .line 733
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 735
    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string v1, "Launcher.Model"

    const-string v2, "Update item in database (%d, %d) of screen %d under container %d"

    const/4 v3, 0x4

    .line 737
    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 738
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-wide v4, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-wide v4, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 737
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher.Model"

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateItemInDatabase, item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method static updateItemUserInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    .line 748
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 749
    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/ItemInfo;->upateUserToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 750
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method static updateLabelInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V
    .locals 2

    .line 712
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "label"

    .line 713
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method static updateScreens(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 521
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/LauncherModel$2;

    invoke-direct {p1, v1, p0}, Lcom/miui/home/launcher/LauncherModel$2;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 540
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static updateTitleInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V
    .locals 2

    .line 706
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 707
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 1

    .line 2695
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public beginLoader(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 2757
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$1;)V

    return-object v0
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "Launcher.Model"

    .line 2686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 2688
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->dumpState()V

    goto :goto_0

    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    .line 2690
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V
    .locals 3

    .line 2710
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mUiExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;->init(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;Ljava/util/concurrent/Executor;)V

    .line 2711
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 2

    .line 1064
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel;->resetLoadedState()Z

    move-result v0

    .line 1065
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-virtual {v1}, Lcom/miui/home/library/utils/DeferredHandler;->cancel()V

    .line 1066
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public getAllAppList()Lcom/miui/home/launcher/AllAppsList;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    return-object v0
.end method

.method public getAllCategoryList()Lcom/miui/home/launcher/AllCategoryList;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    return-object v0
.end method

.method public getAppShortcutInfo(Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIII)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 5

    .line 2356
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string p1, "Launcher.Model"

    const-string p2, "Missing component found in getShortcutInfo"

    .line 2358
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 2361
    :cond_0
    invoke-interface {p3, p7}, Landroid/database/Cursor;->getInt(I)I

    move-result p7

    invoke-static {p2, p7}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p7

    if-nez p7, :cond_1

    const-string p1, "Launcher.Model"

    const-string p2, "Null user found in getShortcutInfo"

    .line 2363
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 2366
    :cond_1
    invoke-static {p2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v1

    invoke-virtual {v1, p1, p7}, Lcom/miui/home/library/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "Launcher.Model"

    .line 2368
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing activity found in getShortcutInfo: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 2371
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    const/4 v2, 0x0

    .line 2372
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    .line 2373
    iput-object p1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 2374
    invoke-virtual {v0, p7}, Lcom/miui/home/launcher/ShortcutInfo;->setUser(Landroid/os/UserHandle;)V

    .line 2375
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Landroid/content/pm/LauncherActivityInfo;)V

    .line 2378
    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mReadLabelFromDB:Z

    if-nez p1, :cond_3

    if-eqz v1, :cond_3

    .line 2379
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 2382
    :cond_3
    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mReadLabelFromDB:Z

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 2384
    invoke-interface {p3, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 2387
    :cond_4
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_5

    if-eqz p3, :cond_5

    .line 2389
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 2393
    :cond_5
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_6

    .line 2394
    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 2397
    :cond_6
    iput v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 2398
    invoke-virtual {v0, p4}, Lcom/miui/home/launcher/ShortcutInfo;->setSystemStubApplicationConfig(Landroid/content/ComponentName;)V

    .line 2399
    invoke-virtual {v0, p4}, Lcom/miui/home/launcher/ShortcutInfo;->setThirdApplicationConfig(Landroid/content/ComponentName;)V

    if-eqz v1, :cond_7

    .line 2402
    invoke-static {v0, v1}, Lcom/miui/home/launcher/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V

    :cond_7
    return-object v0
.end method

.method public getCallback()Lcom/miui/home/launcher/LauncherModel$Callbacks;
    .locals 1

    .line 2742
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mSecurityHideMessageHandler:Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method getIconBitmapFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 2490
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 2492
    :try_start_0
    array-length v0, p1

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLauncherAppsCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    return-object v0
.end method

.method public getProgressItemInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
    .locals 2

    .line 2499
    new-instance p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-direct {p3}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;-><init>()V

    const-wide/16 v0, -0x64

    .line 2500
    iput-wide v0, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    const/16 v0, 0xb

    .line 2501
    iput v0, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->itemType:I

    const/4 v0, 0x4

    .line 2502
    iput v0, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIconType:I

    .line 2503
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel;->fillShortcutInfoFromIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 2504
    iget-object p2, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x1

    .line 2508
    iput p2, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->spanY:I

    iput p2, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->spanX:I

    .line 2509
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    return-object p3
.end method

.method getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIIIIII)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 2

    .line 2415
    invoke-direct {p0, p4, p1}, Lcom/miui/home/launcher/LauncherModel;->createShortcutInfo(ILandroid/content/Intent;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p4

    .line 2416
    iput-object p1, p4, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/16 p1, 0x13

    .line 2417
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p4, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 p1, 0x0

    .line 2419
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p4, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    .line 2421
    invoke-interface {p2, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2422
    invoke-interface {p2, p9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p4, p9, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 2423
    iget-boolean p9, p0, Lcom/miui/home/launcher/LauncherModel;->mReadLabelFromDB:Z

    if-eqz p9, :cond_0

    .line 2424
    invoke-interface {p2, p10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p4, p9}, Lcom/miui/home/launcher/ShortcutInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 2426
    :cond_0
    iget-object p9, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-interface {p2, p11}, Landroid/database/Cursor;->getInt(I)I

    move-result p10

    invoke-static {p9, p10}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p9

    const/4 p10, 0x0

    if-nez p9, :cond_1

    return-object p10

    .line 2431
    :cond_1
    invoke-virtual {p4, p9}, Lcom/miui/home/launcher/ShortcutInfo;->setUser(Landroid/os/UserHandle;)V

    const/16 p9, 0x15

    const/4 p11, 0x1

    .line 2434
    :try_start_0
    invoke-interface {p2, p9}, Landroid/database/Cursor;->getInt(I)I

    move-result p9

    if-ne p9, p11, :cond_2

    move p1, p11

    .line 2435
    :cond_2
    iput-boolean p1, p4, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2437
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2439
    :goto_0
    invoke-interface {p2, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 2440
    iget p1, p4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 2466
    :pswitch_1
    invoke-interface {p2, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2468
    move-object p5, p4

    check-cast p5, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    .line 2470
    :cond_3
    move-object p1, p4

    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-interface {p2, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setPackageName(Ljava/lang/String;)V

    goto :goto_2

    .line 2442
    :pswitch_2
    invoke-virtual {p4, p3}, Lcom/miui/home/launcher/ShortcutInfo;->loadToggleInfo(Landroid/content/Context;)V

    goto :goto_2

    .line 2473
    :pswitch_3
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p0, p2, p8}, Lcom/miui/home/launcher/LauncherModel;->getIconBitmapFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, p5, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2474
    invoke-direct {p0, p4, p1}, Lcom/miui/home/launcher/LauncherModel;->setIcon(Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2445
    :pswitch_4
    invoke-interface {p2, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2446
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0x2f

    .line 2447
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/2addr p2, p11

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 2448
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ".png"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p5

    if-nez p5, :cond_5

    .line 2450
    invoke-static {p3, v0, p1}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 2451
    invoke-static {p3, p2, p10, p5}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p5

    goto :goto_1

    .line 2455
    :cond_4
    invoke-static {p3, v0, p1}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    :cond_5
    :goto_1
    if-nez p5, :cond_6

    .line 2458
    invoke-virtual {p4}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherModel;->getFallbackIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 2460
    :cond_6
    new-instance p2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {p2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object p2, p4, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2461
    iget-object p2, p4, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 2462
    iget-object p2, p4, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object p1, p2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 2463
    invoke-direct {p0, p4, p5}, Lcom/miui/home/launcher/LauncherModel;->setIcon(Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V

    .line 2478
    :goto_2
    invoke-virtual {p4, p3}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    return-object p4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method getShortcutInfo(Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2559
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfoIgnoreDuplication(Landroid/content/Intent;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    .line 2561
    iget p3, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    iget p3, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    .line 2563
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->isDupShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    const-wide/16 v0, -0x1

    if-eqz p2, :cond_2

    .line 2566
    iget p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    int-to-long v2, p3

    goto :goto_0

    :cond_2
    move-wide v2, v0

    :goto_0
    iput-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    if-eqz p2, :cond_3

    .line 2567
    iget-wide v0, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    :cond_3
    iput-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 2568
    iget v0, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    goto :goto_1

    :cond_4
    move v0, p3

    :goto_1
    iput v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    if-eqz p2, :cond_5

    .line 2569
    iget p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    :cond_5
    iput p3, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    return-object p1
.end method

.method getShortcutInfoIgnoreDuplication(Landroid/content/Intent;I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 5

    .line 2535
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    .line 2536
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/LauncherModel;->createShortcutInfo(ILandroid/content/Intent;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p2

    .line 2537
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->fillShortcutInfoFromIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 2538
    iget-object v1, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "profile"

    const/4 v3, -0x1

    .line 2541
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_2

    .line 2543
    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v1

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    .line 2546
    :cond_1
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setUser(Landroid/os/UserHandle;)V

    :cond_2
    const/4 p1, 0x1

    .line 2548
    iput p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    iput p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    .line 2549
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    return-object p2
.end method

.method public initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 838
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 12

    .line 759
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 761
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 765
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->generateNewId()J

    move-result-wide v2

    .line 766
    iput-wide v2, p2, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 769
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x3

    if-eqz v0, :cond_1

    const-string v8, "Launcher.Model"

    const-string v9, "Insert item %s to database (%d, %d) of screen %d"

    const/4 v10, 0x4

    .line 770
    new-array v10, v10, [Ljava/lang/Object;

    move-object v11, p2

    check-cast v11, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v11}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    iget v5, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v4

    iget v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v1

    iget-wide v4, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v8, "Launcher.Model"

    const-string v9, "Insert item to database (%d, %d) of screen %d"

    .line 772
    new-array v7, v7, [Ljava/lang/Object;

    iget v10, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    iget v5, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    iget-wide v4, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_2

    .line 777
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 779
    :cond_2
    new-instance v7, Lcom/miui/home/launcher/LauncherModel$4;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherModel$4;-><init>(Lcom/miui/home/launcher/LauncherModel;JLcom/miui/home/launcher/ItemInfo;Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 787
    invoke-static {v7}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDupShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 1

    .line 2554
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->makeUniquelyShortcutKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isModelLoaded()Z
    .locals 2

    .line 2751
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2752
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherModel;->mModelLoaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2753
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadFreeStyle()V
    .locals 1

    .line 2657
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$10;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherModel$10;-><init>(Lcom/miui/home/launcher/LauncherModel;)V

    .line 2662
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 2706
    new-instance v0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;

    invoke-direct {v0, p2, p1}, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;-><init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onReceiveBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    .line 905
    iget-object v9, v1, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    .line 907
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 908
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 909
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 911
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object v13, v3

    :goto_0
    if-nez v13, :cond_1

    const-string v0, "Launcher.Model"

    const-string v2, "Nobody to tell about the new app.  Launcher is probably loading."

    .line 913
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 917
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    sget-object v4, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 920
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 922
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 924
    :goto_1
    monitor-exit v4

    goto :goto_3

    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_3
    const-string v0, "Launcher.Model"

    .line 926
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got broadcast:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v14, v1, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 928
    :try_start_2
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.xiaomi.market.ACTION_HD_ICON_UPDATE"

    .line 930
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "packageName"

    .line 931
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 933
    monitor-exit v14

    return-void

    .line 935
    :cond_3
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 936
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 937
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 938
    invoke-virtual {v1, v2, v8}, Lcom/miui/home/launcher/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 939
    monitor-exit v14

    return-void

    :cond_4
    const-string v4, "com.miui.home.ACTION_MOVE_TO_DESKTOP"

    .line 940
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "componentName"

    .line 941
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "Launcher.Model"

    const-string v2, "com.miui.home.ACTION_MOVE_TO_DESKTOP fail with empty componentName"

    .line 943
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 948
    :cond_5
    :try_start_3
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 950
    invoke-static {v9}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v4

    .line 951
    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v4

    .line 952
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/LauncherProvider;->queryInstalledComponentId(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v15, -0x1

    cmp-long v0, v5, v15

    if-eqz v0, :cond_1a

    .line 954
    invoke-static {v5, v6}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v3, v3}, Lcom/miui/home/launcher/LauncherProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 955
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 956
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2, v8}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_d

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "Launcher.Model"

    const-string v3, "com.miui.home.ACTION_MOVE_TO_DESKTOP fail"

    .line 960
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :cond_6
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 962
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 963
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 964
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_c

    :cond_7
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 992
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 993
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_8

    :cond_8
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1015
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 1016
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 1026
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 1027
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_a
    if-nez v8, :cond_b

    .line 1029
    monitor-exit v14

    return-void

    .line 1031
    :cond_b
    invoke-static {v9}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/miui/home/library/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_c

    .line 1033
    invoke-static {v2}, Lcom/miui/home/launcher/util/FlagOp;->addFlag(I)Lcom/miui/home/launcher/util/FlagOp;

    move-result-object v2

    goto :goto_4

    .line 1034
    :cond_c
    invoke-static {v2}, Lcom/miui/home/launcher/util/FlagOp;->removeFlag(I)Lcom/miui/home/launcher/util/FlagOp;

    move-result-object v2

    .line 1036
    :goto_4
    invoke-static/range {p3 .. p3}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v3

    .line 1037
    iget-object v4, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v4, v3, v2}, Lcom/miui/home/launcher/AllAppsList;->updateDisabledFlags(Lcom/miui/home/launcher/util/ItemInfoMatcher;Lcom/miui/home/launcher/util/FlagOp;)V

    .line 1038
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;

    invoke-direct {v3, v8, v0}, Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;-><init>(Landroid/os/UserHandle;Z)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_d
    :goto_5
    const-string v3, "android.intent.extra.changed_package_list"

    .line 1017
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1018
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_7

    .line 1021
    :cond_e
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v8}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1022
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_f

    .line 1023
    invoke-static {v3}, Lcom/miui/home/launcher/util/FlagOp;->addFlag(I)Lcom/miui/home/launcher/util/FlagOp;

    move-result-object v0

    goto :goto_6

    .line 1024
    :cond_f
    invoke-static {v3}, Lcom/miui/home/launcher/util/FlagOp;->removeFlag(I)Lcom/miui/home/launcher/util/FlagOp;

    move-result-object v0

    .line 1025
    :goto_6
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v3, v2, v0}, Lcom/miui/home/launcher/AllAppsList;->updateDisabledFlags(Lcom/miui/home/launcher/util/ItemInfoMatcher;Lcom/miui/home/launcher/util/FlagOp;)V

    goto/16 :goto_d

    .line 1019
    :cond_10
    :goto_7
    monitor-exit v14

    return-void

    :cond_11
    :goto_8
    const-string v3, "android.intent.extra.changed_package_list"

    .line 994
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 996
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_b

    :cond_12
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1000
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1001
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1003
    :try_start_5
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v2, v4, v8}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1004
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_9

    :catch_2
    :try_start_6
    const-string v0, "Launcher.Model"

    const-string v2, "database didnot ready,ignore this change"

    .line 1006
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    monitor-exit v14

    return-void

    :cond_13
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1010
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1011
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1012
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v3, v2, v8}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_a

    .line 997
    :cond_14
    :goto_b
    monitor-exit v14

    return-void

    .line 965
    :cond_15
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_20

    .line 966
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_e

    .line 971
    :cond_16
    invoke-static {v15}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 972
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 973
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0, v15, v8}, Lcom/miui/home/launcher/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 974
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0, v9, v15, v8}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 975
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;

    invoke-direct {v2, v15}, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_d

    :cond_17
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 976
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 977
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0, v15, v8}, Lcom/miui/home/launcher/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 978
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0, v15, v8}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 v0, 0x0

    .line 979
    invoke-static {v9, v15, v0}, Lcom/mi/preinstall/AutoInstallParserHelp;->addOrRemovePAIPackage(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    .line 980
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;

    invoke-direct {v2, v15}, Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_d

    :cond_18
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 981
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 982
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0, v15, v8}, Lcom/miui/home/launcher/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 983
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v9

    move-object v4, v15

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/UserHandle;)V

    .line 984
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v0, :cond_19

    .line 985
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 986
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    :cond_19
    invoke-static {v9}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->removeActiveSession(Ljava/lang/String;)V

    .line 989
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/PackageAddMessage;

    invoke-direct {v2, v15}, Lcom/miui/home/launcher/common/messages/PackageAddMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 990
    invoke-direct {v1, v9, v15}, Lcom/miui/home/launcher/LauncherModel;->handleSlideUpGestureSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 1041
    :cond_1a
    :goto_d
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 1042
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1045
    :cond_1b
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1046
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1048
    :cond_1c
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1049
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1051
    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1052
    invoke-direct {v1, v11}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItems(Ljava/util/ArrayList;)V

    .line 1054
    :cond_1e
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1055
    invoke-direct {v1, v10}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcuts(Ljava/util/ArrayList;)V

    :cond_1f
    const-string v0, "Launcher.Model"

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveBackground, mAllAppsList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v3}, Lcom/miui/home/launcher/AllAppsList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/library/utils/DeferredHandler;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$EygPYzDRnW6z6v8lsS1mitql1EI;

    invoke-direct {v2, v13, v11, v10, v12}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$EygPYzDRnW6z6v8lsS1mitql1EI;-><init>(Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1059
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 1060
    monitor-exit v14

    return-void

    .line 968
    :cond_20
    :goto_e
    monitor-exit v14

    return-void

    :catchall_1
    move-exception v0

    .line 1060
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Launcher.Model"

    const-string v0, "Launcher is not running,process later"

    .line 880
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 883
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/home/launcher/LauncherModel$8;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/Launcher;Ljava/lang/Runnable;)V

    .line 895
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 4

    .line 1094
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Launcher.Model"

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLoader isLaunching="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    .line 1103
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel;->stopLoaderLocked()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 1104
    :goto_1
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;-><init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    .line 1105
    sget-object p1, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1106
    sget-object p1, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1108
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopLoader()V
    .locals 2

    .line 1116
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    const/4 v1, 0x0

    .line 1117
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->stopLocked()V

    :cond_0
    return-void
.end method

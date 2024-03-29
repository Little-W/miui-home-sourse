.class Lcom/miui/home/launcher/install/PackageInstallerCompatVL;
.super Lcom/miui/home/launcher/install/PackageInstallerCompat;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;
    }
.end annotation


# instance fields
.field private final mActiveSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field private mContext:Landroid/content/Context;

.field private final mInstaller:Landroid/content/pm/PackageInstaller;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/install/PackageInstallerCompat;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mActiveSessions:Ljava/util/HashSet;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    .line 41
    new-instance p1, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;

    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mActiveSessions:Ljava/util/HashSet;

    invoke-direct {p1, v0, v1, p0}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;-><init>(Landroid/content/pm/PackageInstaller;Ljava/util/HashSet;Lcom/miui/home/launcher/install/PackageInstallerCompatVL;)V

    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 42
    iget-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->sendUpdate(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private sendUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;-><init>(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addActiveSession(Ljava/lang/String;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mActiveSessions:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActiveSessions()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 50
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 53
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 55
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    goto :goto_1

    .line 57
    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mContext:Landroid/content/Context;

    const/high16 v6, 0x10d0000

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 59
    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 62
    :cond_2
    :goto_1
    new-instance v5, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v2

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-direct {v5, v6, v2, v4}, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public synthetic lambda$sendUpdate$0$PackageInstallerCompatVL(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 86
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    const-string v1, "com.android.vending"

    invoke-direct {v0, p1, v1, p2}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setTitle(Ljava/lang/String;)V

    .line 88
    sget-object p3, Lcom/miui/home/launcher/install/PlayAutoInstallHelper;->DEFAULT_ICON:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setIconUri(Landroid/net/Uri;)V

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p3

    iget-object p0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0, p1, p2, p2}, Lcom/miui/home/launcher/Launcher;->updateWidgetProgress(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public removeActiveSession(Ljava/lang/String;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->mActiveSessions:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

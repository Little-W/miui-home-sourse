.class public Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecommendAppsDownloadReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver$_lancet;
    }
.end annotation


# static fields
.field private static mInstanse:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;
    .locals 1

    .line 24
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->mInstanse:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->mInstanse:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    .line 27
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->mInstanse:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    return-object v0
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.market.DesktopRecommendDownloadStart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    const-string p1, "folderId"

    .line 37
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 39
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "appId"

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->onAppStartDownload(Ljava/lang/String;)V

    .line 44
    sget-boolean p0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_2

    .line 45
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->onAppStartDownload(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

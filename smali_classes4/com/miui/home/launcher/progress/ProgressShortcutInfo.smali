.class public Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
.super Lcom/miui/home/launcher/RemoteShortcutInfo;
.source "ProgressShortcutInfo.java"


# instance fields
.field public mAppProgressServer:Ljava/lang/String;

.field mChangeProgressAnimator:Landroid/animation/ValueAnimator;

.field private mHasStarted:Z

.field public mProgressPercent:I

.field public mProgressStatus:I

.field public mProgressTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>()V

    const/4 v0, -0x5

    .line 41
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mHasStarted:Z

    const/16 v0, 0xf

    .line 49
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>()V

    const/4 v0, -0x5

    .line 41
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mHasStarted:Z

    const/16 v0, 0xb

    .line 54
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->itemType:I

    const/4 v0, 0x4

    .line 55
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIconType:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11047d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 58
    iput-object p4, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mRemotePkgName:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    .line 61
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    new-instance p3, Landroid/content/ComponentName;

    const-string p4, "invalidClassName"

    invoke-direct {p3, p2, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    iput-wide p5, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/Launcher;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateProgressIcon(Lcom/miui/home/launcher/Launcher;J)V

    return-void
.end method

.method private isAutoInstallShortcut()Z
    .locals 1

    .line 262
    iget p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->itemFlags:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInstalledByServer(Landroid/content/Context;)Z
    .locals 1

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateProgressIcon(Lcom/miui/home/launcher/Launcher;J)V
    .locals 3

    .line 131
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_1

    .line 133
    iget-wide v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->screenId:J

    cmp-long p2, v1, p2

    if-eqz p2, :cond_0

    iget-wide p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    const-wide/16 v1, -0x65

    cmp-long p2, p2, v1

    if-eqz p2, :cond_0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide p2

    iget-wide v1, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long p2, p2, v1

    if-nez p2, :cond_1

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onProgressStatusChanged()V

    :cond_1
    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 141
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result p0

    if-nez p0, :cond_3

    .line 142
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    iget-wide p1, v0, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isIdInCurrentScreen(J)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 145
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 146
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->invalidatePreviews()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public canAcceptByHotSeats()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canBeDeleted(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$jqrYRMk4Qu8wTBCN0fSpmql_bYk;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$jqrYRMk4Qu8wTBCN0fSpmql_bYk;-><init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method

.method public handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 2

    .line 209
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->isAutoInstallShortcut()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 212
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "miui.autoinstall.config.action.AUTOINSTALL"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.core"

    .line 213
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_package_name"

    .line 214
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 217
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    const-string v0, "com.android.vending"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 221
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 222
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/miui/home/launcher/Application;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 227
    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, -0x5

    if-eq p2, v0, :cond_2

    .line 228
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/progress/ProgressManager;->onProgressIconClicked(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$getFillShortcutIconConsumer$0$ProgressShortcutInfo(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 182
    instance-of p3, p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    if-eqz p3, :cond_1

    .line 183
    check-cast p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 185
    iget-object p3, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 186
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public needShowProgress()Z
    .locals 1

    .line 76
    iget p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, -0x3

    if-eq p0, v0, :cond_1

    const/4 v0, -0x4

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 158
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "iconResource"

    .line 160
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 165
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "iconPackage"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "ProgressShortcutInfo"

    const-string p1, "progress shortcut\'s intent or component is null"

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onProgressFinished(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;-><init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0, p1, v1}, Lcom/miui/home/launcher/ScreenUtils;->asynIsAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;Lcom/miui/home/launcher/common/ResultRunnable;)V

    return-void
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->isInstalledByServer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/progress/ProgressManager;->onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 200
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/progress/ProgressManager;->removeProgressingInfo(Ljava/lang/String;)V

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_2

    .line 203
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onIconRemoved()V

    :cond_2
    return-void
.end method

.method public setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->onIconSetNull()V

    .line 272
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setStarted(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mHasStarted:Z

    return-void
.end method

.method public updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 174
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_0

    .line 175
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onProgressStatusChanged()V

    :cond_0
    return-void
.end method

.method public updateStatus(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Landroid/net/Uri;J)V
    .locals 9

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->needShowProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p2, :cond_1

    .line 84
    iget v3, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    if-eq v3, p2, :cond_1

    sub-int v4, p2, v3

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;-><init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;IILcom/miui/home/launcher/Launcher;J)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    const/4 v0, -0x4

    if-eq p2, v0, :cond_2

    const/4 v0, -0x5

    if-ne p2, v0, :cond_3

    :cond_2
    const/16 v0, 0x64

    .line 107
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 111
    :cond_3
    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    if-ne v0, p2, :cond_4

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 112
    :cond_4
    iput-object p3, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 113
    iput p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 114
    invoke-direct {p0, p1, p5, p6}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateProgressIcon(Lcom/miui/home/launcher/Launcher;J)V

    :cond_5
    if-eqz p4, :cond_8

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 118
    :cond_6
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    const/4 p2, 0x0

    .line 119
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 121
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 123
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    goto :goto_2

    .line 124
    :cond_7
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p2, :cond_8

    .line 125
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    :cond_8
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

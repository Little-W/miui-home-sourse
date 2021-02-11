.class public Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
.super Lcom/miui/home/launcher/RemoteShortcutInfo;
.source "ProgressShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/progress/ProgressShortcutInfo$_lancet;
    }
.end annotation


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

    .line 46
    invoke-direct {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>()V

    const/4 v0, -0x5

    .line 39
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mHasStarted:Z

    const/16 v0, 0xf

    .line 47
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>()V

    const/4 v0, -0x5

    .line 39
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mHasStarted:Z

    const/16 v0, 0xb

    .line 52
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->itemType:I

    const/4 v0, 0x4

    .line 53
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIconType:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100247

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 56
    iput-object p4, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mRemotePkgName:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    .line 59
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 60
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    new-instance p3, Landroid/content/ComponentName;

    const-string p4, "invalidClassName"

    invoke-direct {p3, p2, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    iput-wide p5, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateProgressIcon(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private isAutoInstallShortcut()Z
    .locals 2

    .line 264
    iget v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->itemFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInstalledByServer(Landroid/content/Context;)Z
    .locals 2

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$getFillShortcutIconConsumer$0(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 181
    iget-object p3, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 182
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateProgressIcon(Lcom/miui/home/launcher/Launcher;)V
    .locals 5

    .line 129
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_1

    .line 131
    iget-wide v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->screenId:J

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onProgressStatusChanged()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result p1

    if-nez p1, :cond_3

    .line 139
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    goto :goto_0

    .line 141
    :cond_2
    iget-wide v1, v0, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    .line 142
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 143
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->invalidatePreviews()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public canAcceptByHotSeats()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canBeDeleted(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)Ljava8/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ")",
            "Ljava8/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$Wd0gVqSm7hV0ESAJxFR--sWFsaU;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$Wd0gVqSm7hV0ESAJxFR--sWFsaU;-><init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method

.method public handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 3

    .line 211
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->isAutoInstallShortcut()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 214
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "miui.autoinstall.config.action.AUTOINSTALL"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.core"

    .line 215
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_package_name"

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    const-string v0, "com.android.vending"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 223
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 224
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 229
    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, -0x5

    if-eq p2, v0, :cond_2

    .line 230
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/progress/ProgressManager;->onProgressIconClicked(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hasStarted()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mHasStarted:Z

    return v0
.end method

.method public needShowProgress()Z
    .locals 2

    .line 74
    iget v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    const/4 v1, -0x4

    if-eq v0, v1, :cond_1

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 155
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 156
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "iconResource"

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "iconPackage"

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "ProgressShortcutInfo"

    const-string p2, "progress shortcut\'s intent or component is null"

    .line 164
    invoke-static {p1, p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onProgressFinished(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;-><init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0, p1, v1}, Lcom/miui/home/launcher/ScreenUtils;->asynIsAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;Lcom/miui/home/launcher/common/ResultRunnable;)V

    return-void
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->isInstalledByServer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/progress/ProgressManager;->onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 196
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/progress/ProgressManager;->removeProgressingInfo(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReplaced(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 202
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->onReplaced(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    const-string v0, "com.miui.cloudbackup"

    .line 203
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 204
    iput v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 205
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public setStarted(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mHasStarted:Z

    return-void
.end method

.method public updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 171
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onProgressStatusChanged()V

    :cond_0
    return-void
.end method

.method public updateStatus(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 5

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->needShowProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p2, :cond_1

    .line 82
    iget v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    if-eq v0, p2, :cond_1

    sub-int v1, p2, v0

    .line 85
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    .line 87
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 91
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 93
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x226

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;-><init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;IILcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
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

    .line 105
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 109
    :cond_3
    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    if-ne v0, p2, :cond_4

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 110
    :cond_4
    iput-object p3, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 111
    iput p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 112
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateProgressIcon(Lcom/miui/home/launcher/Launcher;)V

    :cond_5
    if-eqz p4, :cond_8

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 116
    :cond_6
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    const/4 p2, 0x0

    .line 117
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 119
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 121
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    goto :goto_2

    .line 122
    :cond_7
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p2, :cond_8

    .line 123
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

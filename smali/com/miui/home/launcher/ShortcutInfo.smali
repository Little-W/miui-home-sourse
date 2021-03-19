.class public Lcom/miui/home/launcher/ShortcutInfo;
.super Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;
.source "ShortcutInfo.java"


# static fields
.field private static sRetainedList:Lcom/miui/home/launcher/RetainedList;


# instance fields
.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field private mAppType:I

.field private mBuddyForParent:Landroid/view/ViewGroup;

.field protected mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

.field private mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

.field protected mIconPackage:Ljava/lang/String;

.field public mIconType:I

.field public mIntent:Landroid/content/Intent;

.field private mMessageText:Ljava/lang/String;

.field protected mShowDefaultIcon:Z

.field private mTextBg:Ljava/lang/String;

.field protected mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

.field private mTile:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    new-instance v0, Lcom/miui/home/launcher/RetainedList;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/RetainedList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/ShortcutInfo;->sRetainedList:Lcom/miui/home/launcher/RetainedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    .line 81
    new-instance v0, Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    const/4 v0, 0x1

    .line 115
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 116
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    .line 117
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V
    .locals 4

    .line 167
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    .line 81
    new-instance v1, Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/CheckableDelegate;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    const/4 v1, -0x1

    .line 82
    iput v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    .line 168
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v0, 0x1

    .line 173
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    const-wide/16 v2, -0x1

    .line 174
    iput-wide v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const/high16 v0, 0x10200000

    .line 175
    invoke-virtual {p0, v1, v0, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setActivity(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V

    .line 177
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setThirdApplicationConfig(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/AppInfo;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    .line 81
    new-instance v0, Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    .line 121
    iget-wide v0, p1, Lcom/miui/home/launcher/AppInfo;->id:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    .line 122
    iget-wide v0, p1, Lcom/miui/home/launcher/AppInfo;->container:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 123
    iget-wide v0, p1, Lcom/miui/home/launcher/AppInfo;->screenId:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    .line 124
    iget v0, p1, Lcom/miui/home/launcher/AppInfo;->cellX:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 125
    iget v0, p1, Lcom/miui/home/launcher/AppInfo;->cellY:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const/4 v0, 0x1

    .line 126
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    .line 127
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    .line 128
    iget-object v0, p1, Lcom/miui/home/launcher/AppInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 129
    iget-object v0, p1, Lcom/miui/home/launcher/AppInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/miui/home/launcher/AppInfo;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 131
    iget v0, p1, Lcom/miui/home/launcher/AppInfo;->itemFlags:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 132
    iget v0, p1, Lcom/miui/home/launcher/AppInfo;->itemType:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 133
    iget-object v0, p1, Lcom/miui/home/launcher/AppInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 134
    iget v0, p1, Lcom/miui/home/launcher/AppInfo;->mIconType:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 135
    iget-object v0, p1, Lcom/miui/home/launcher/AppInfo;->mIconPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    .line 136
    iget-boolean v0, p1, Lcom/miui/home/launcher/AppInfo;->mHideApplicationMessage:Z

    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mHideApplicationMessage:Z

    .line 137
    iget-object v0, p1, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 138
    iget-boolean v0, p1, Lcom/miui/home/launcher/AppInfo;->mIsRetained:Z

    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    .line 139
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getMessageText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getMessageBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getMessageTile()[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    .line 142
    iget v0, p1, Lcom/miui/home/launcher/AppInfo;->runtimeStatusFlags:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    .line 143
    iget-object v0, p1, Lcom/miui/home/launcher/AppInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    .line 144
    iget-boolean p1, p1, Lcom/miui/home/launcher/AppInfo;->isLandscapePos:Z

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setLandscapePos(Z)V

    return-void
.end method

.method private canRegisterOrUnregisterToggleListener(Lcom/miui/home/launcher/ShortcutIcon;)Z
    .locals 2

    .line 554
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkBuddyIcon()V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->checkCheckBox(Z)V

    :cond_0
    return-void
.end method

.method private getResParseTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p1

    .line 243
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getFillShortcutIconConsumer$0(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 735
    invoke-static {p3}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    .line 736
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 737
    iget p3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p3

    .line 739
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private tryRegisterToggleListener(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    .line 547
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->canRegisterOrUnregisterToggleListener(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->addToggleListener(Landroid/content/Context;Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;)V

    const-string p1, "Launcher.ShortcutInfo"

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register toggleListener, label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private tryUnregisterToggleListener()V
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->canRegisterOrUnregisterToggleListener(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->removeToggleListener(Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;)V

    const-string v0, "Launcher.ShortcutInfo"

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister toggleListener, label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private tryUpdateFolderIndicator(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->updateNewInstallNotification()V

    :cond_0
    return-void
.end method

.method private updateLabelInDatabases(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 4

    .line 259
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-static {p2, v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateLabelInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canAcceptByHotSeats()Z
    .locals 2

    .line 340
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public canBeDeleted(Landroid/content/Context;)Z
    .locals 4

    .line 203
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lcom/miui/home/launcher/ShortcutInfo;->sRetainedList:Lcom/miui/home/launcher/RetainedList;

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/RetainedList;->contain(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 207
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 208
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->checkCanBeDeleted(Landroid/content/Context;)V

    .line 210
    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public canBeDrop()Z
    .locals 3

    .line 191
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    if-nez v0, :cond_2

    .line 192
    :cond_1
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->canBeDrop()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public checkCanBeDeleted(Landroid/content/Context;)V
    .locals 3

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isProtectedDataAppAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/miui/launcher/utils/LauncherUtils;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 185
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    xor-int/lit8 p1, v2, 0x1

    .line 186
    iput p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    return-void
.end method

.method public clearSavedCheckedStatus()V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->clearSavedCheckedStatus()V

    return-void
.end method

.method public finishPending()V
    .locals 0

    .line 642
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->finishPending()V

    .line 643
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->clearSavedCheckedStatus()V

    return-void
.end method

.method public getAnnounceForDelete()Ljava/lang/String;
    .locals 2

    .line 691
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 692
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBuddyForParent()Landroid/view/ViewGroup;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0
.end method

.method public getBuddyIconView(Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 574
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    return-object v1
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-static {}, Lcom/miui/home/launcher/common/IconDisabledFilter;->getInstance()Lcom/miui/home/launcher/common/IconDisabledFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/IconDisabledFilter;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0
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

    .line 733
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ShortcutInfo$iGtRoxApG9M95j20Y2bhhzucNpA;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$ShortcutInfo$iGtRoxApG9M95j20Y2bhhzucNpA;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method

.method public getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/IconCache;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/miui/home/launcher/ShortcutInfo$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/ShortcutInfo$1;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/miui/home/launcher/ShortcutInfo$2;

    invoke-direct {p1, p0, p4}, Lcom/miui/home/launcher/ShortcutInfo$2;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/function/Consumer;)V

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 374
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 375
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 380
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 p3, 0xf

    if-ne p1, p3, :cond_1

    .line 381
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 383
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez p1, :cond_2

    .line 385
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    .line 387
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getIconPackage()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMessageBg()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTile()[B
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p1

    .line 236
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getResParseTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTitleStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 247
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method getToggleIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 495
    instance-of v0, p1, Lcom/miui/home/launcher/ToggleDrawable;

    if-eqz v0, :cond_0

    .line 496
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ToggleDrawable;

    invoke-virtual {v0, p2, p3}, Lcom/miui/home/launcher/ToggleDrawable;->refreshForeground(Landroid/content/Context;I)V

    return-object p1

    .line 499
    :cond_0
    invoke-static {p2, p3}, Lcom/miui/home/launcher/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getToggleId()I
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "ToggleId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 4

    .line 662
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->inMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->invertChecked()V

    .line 666
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/EditModeItemClickedMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/EditModeItemClickedMessage;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 667
    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v1

    .line 671
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 674
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 675
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

    .line 676
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 677
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 678
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-eqz v0, :cond_4

    .line 679
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 680
    :cond_4
    :goto_0
    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/Launcher;->launch(Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/View;)V

    .line 681
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->makeShortcutNotHybrid(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 682
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch(Lcom/miui/home/launcher/Launcher;)V

    :goto_1
    return v1
.end method

.method public invertChecked()V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->invertChecked()V

    .line 612
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isContactShortcut()Z
    .locals 2

    const-string v0, "com.android.contacts"

    .line 335
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeepShortcut()Z
    .locals 2

    .line 391
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmptyMessage()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHybridApp()Z
    .locals 4

    .line 196
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/home/launcher/hybrid/HybridController;->isHybridApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isShortcut()Z
    .locals 3

    .line 222
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .line 149
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 p1, 0x1

    .line 152
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 154
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 155
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "profile"

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x5

    .line 161
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 163
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected loadTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public loadToggleInfo(Landroid/content/Context;)V
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result v0

    invoke-static {v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getName(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public makeUniquelyShortcutKey()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->makeUniquelyShortcutKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeUniquelyShortcutKey(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    .line 512
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 513
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 514
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 517
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 518
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";#shortcut_name:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";end"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 444
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string p1, "Launcher.ShortcutInfo"

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddToDatabase, this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "title"

    .line 449
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    const-string v1, "label"

    .line 452
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string p1, "intent"

    .line 455
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconType"

    .line 457
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 460
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "iconPackage"

    .line 461
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "iconPackage"

    .line 463
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    .line 466
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-ne p1, v0, :cond_5

    .line 467
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/home/launcher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_7

    .line 469
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz p1, :cond_6

    .line 470
    iget-object p1, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    const-string p1, "iconPackage"

    .line 471
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconResource"

    .line 473
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, "iconResource"

    const-string v0, ""

    .line 476
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_7
    :goto_3
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez p1, :cond_9

    .line 482
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p1, "iconPackage"

    .line 483
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string p1, "Launcher.ShortcutInfo"

    const-string p2, "Application shortcut\'s intent or component is null"

    .line 485
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-void
.end method

.method public onIconChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 779
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 781
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    :cond_1
    return-void
.end method

.method public onLaunch(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 276
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 277
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 278
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 279
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 280
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    .line 283
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->tryUpdateFolderIndicator(Lcom/miui/home/launcher/Launcher;)V

    .line 284
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_1
    return-void
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 647
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->makeShortcutNotHybrid(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 648
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->tryUnregisterToggleListener()V

    return-void
.end method

.method public onReplaced(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    const-string p1, "Launcher.ShortcutInfo"

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReplaced, old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iput p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 654
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    iput p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    .line 655
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    iput-wide v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    .line 656
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    iput-wide v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 657
    iget-boolean p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->isLandscapePos:Z

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setLandscapePos(Z)V

    const-string p1, "Launcher.ShortcutInfo"

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReplaced, new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public printIdentity()Ljava/lang/String;
    .locals 2

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->printIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recycleIconRes()V
    .locals 2

    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->stopLoading()V

    .line 587
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 588
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public restoreCheckedStatus()V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->restoreCheckedStatus()V

    .line 624
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public saveCheckedStatus()V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->saveCheckedStatus()V

    .line 618
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public final setActivity(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V
    .locals 2

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 434
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 436
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 437
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string p2, "profile"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 438
    iput p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 439
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateUser(Landroid/content/Intent;)V

    return-void
.end method

.method public setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V
    .locals 2

    .line 558
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->tryUnregisterToggleListener()V

    .line 559
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->tryRegisterToggleListener(Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 560
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    .line 561
    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    .line 562
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_0

    const-string p1, "com.miui.backup:drawable/in_progress"

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 563
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 565
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public setHideApplicationMessage(Z)V
    .locals 0

    .line 634
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setHideApplicationMessage(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 636
    invoke-virtual {p0, p1, p1, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public setIconPackage(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 598
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/CheckableDelegate;->setIsChecked(Z)V

    .line 599
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    :cond_0
    return-void
.end method

.method public setLabelAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->updateLabelInDatabases(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 304
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 305
    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 306
    iput-object p3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    .line 307
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_0

    const-string p1, "com.miui.backup:drawable/in_progress"

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    invoke-virtual {p1, p2, p3, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public setThirdApplicationConfig(Ljava/lang/String;)V
    .locals 3

    .line 806
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5:Z

    if-eqz v0, :cond_0

    .line 807
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    const/16 v1, 0x80

    .line 808
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 807
    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    new-instance v1, Lcom/miui/home/launcher/ThirdApplicationConfig;

    invoke-direct {v1, v0, p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    :cond_0
    return-void
.end method

.method public setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 268
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-static {p2, v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateTitleInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V

    .line 271
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getResParseTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setLabelAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public setUser(Landroid/os/UserHandle;)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setUser(Landroid/os/UserHandle;)V

    .line 218
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 0

    .line 536
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->unbind()V

    return-void
.end method

.method public updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setTag(Ljava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    .line 726
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 727
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->relayoutMessageTextView()V

    .line 729
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->tryUpdateFolderIndicator(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public updateIcon(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 791
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 792
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)Ljava/util/function/Consumer;

    move-result-object v2

    .line 791
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateNormalShortcut(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "miui.intent.extra.SHOW_MESSAGE"

    .line 696
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "miui.intent.extra.SHOW_MESSAGE"

    const/4 v1, 0x1

    .line 697
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setHideApplicationMessage(Z)V

    :cond_0
    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 702
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 703
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "android.intent.extra.shortcut.ICON"

    .line 706
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.intent.extra.shortcut.ICON"

    .line 707
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 708
    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 709
    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const-string v3, "com.miui.home.shortcut.extra.INTENT_NEW"

    .line 714
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "com.miui.home.shortcut.extra.INTENT_NEW"

    .line 715
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/content/Intent;

    const-string p2, "Launcher.ShortcutInfo"

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNormalShortcut: newIntent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_3
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->updateShortcutInfo(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    return-void
.end method

.method protected updateShortcutInfo(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 751
    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 757
    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p4, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 758
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/miui/home/launcher/common/Utilities;->equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p4, p2}, Lcom/miui/home/launcher/common/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 761
    :cond_1
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    .line 763
    iget p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-eq p2, v0, :cond_2

    .line 764
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    :cond_2
    move p4, v0

    .line 768
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 770
    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    move p4, v0

    :cond_4
    if-eqz p4, :cond_5

    .line 773
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 774
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    :cond_5
    return-void
.end method

.method public wrapIconWithBorder(Landroid/content/Context;)V
    .locals 1

    .line 417
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 419
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v0, "android.provider.action.QUICK_CONTACT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.intent.action.CALL"

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 420
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

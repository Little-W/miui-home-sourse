.class public Lcom/miui/home/launcher/ShortcutInfo;
.super Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;
.source "ShortcutInfo.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/IUniqueKey;


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

.field private mInstallerPackageName:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field private mMessageText:Ljava/lang/String;

.field protected mShowDefaultIcon:Z

.field private mSystemApplicationConfig:Lcom/miui/home/launcher/SystemAppStubConfig;

.field private mTextBg:Ljava/lang/String;

.field protected mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

.field private mTile:[B

.field private mTrackMessage:Ljava/lang/String;

.field private mUniqueKey:Lcom/miui/home/launcher/interfaces/IUniqueKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 133
    new-instance v0, Lcom/miui/home/launcher/RetainedList;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/RetainedList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/ShortcutInfo;->sRetainedList:Lcom/miui/home/launcher/RetainedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    .line 99
    new-instance v0, Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    const-string v0, "static_icon"

    .line 130
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 140
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    .line 141
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V
    .locals 4

    .line 192
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    .line 99
    new-instance v1, Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/CheckableDelegate;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    const/4 v1, -0x1

    .line 100
    iput v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    const-string v1, "static_icon"

    .line 130
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    .line 193
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v0, 0x1

    .line 198
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    const-wide/16 v2, -0x1

    .line 199
    iput-wide v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const/high16 v0, 0x10200000

    .line 200
    invoke-virtual {p0, v1, v0, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setActivity(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V

    .line 202
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setSystemStubApplicationConfig(Landroid/content/ComponentName;)V

    .line 206
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setThirdApplicationConfig(Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/BaseAppInfo;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    .line 99
    new-instance v0, Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    const-string v0, "static_icon"

    .line 130
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    .line 145
    iget-wide v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->id:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    .line 146
    iget-wide v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->container:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 147
    iget-wide v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->screenId:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    .line 148
    iget v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->cellX:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 149
    iget v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->cellY:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const/4 v0, 0x1

    .line 150
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    .line 151
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    .line 152
    iget-object v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 153
    iget-object v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/miui/home/launcher/BaseAppInfo;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 155
    iget v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->itemFlags:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 156
    iget v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->itemType:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 157
    iget-object v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 158
    iget v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->mIconType:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 159
    iget-object v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->mIconPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    .line 160
    iget-boolean v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->mHideApplicationMessage:Z

    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mHideApplicationMessage:Z

    .line 161
    iget-object v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 162
    iget-boolean v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->mIsRetained:Z

    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    .line 163
    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseAppInfo;->getMessageText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseAppInfo;->getMessageBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseAppInfo;->getMessageTile()[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    .line 166
    iget v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->runtimeStatusFlags:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    .line 167
    iget-object v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    .line 168
    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseAppInfo;->getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mSystemApplicationConfig:Lcom/miui/home/launcher/SystemAppStubConfig;

    .line 169
    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseAppInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    return-void
.end method

.method private canRegisterOrUnregisterToggleListener(Lcom/miui/home/launcher/ShortcutIcon;)Z
    .locals 2

    .line 640
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

    .line 702
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->checkCheckBox(Z)V

    :cond_0
    return-void
.end method

.method private getResParseTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p1

    .line 305
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isBitmapIconType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic lambda$getFillShortcutIconConsumer$0(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 840
    invoke-static {p3}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    .line 841
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 842
    iget p3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p3

    .line 844
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 846
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

    .line 633
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->canRegisterOrUnregisterToggleListener(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->addToggleListener(Landroid/content/Context;Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;)V

    const-string p1, "Launcher.ShortcutInfo"

    .line 635
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

    .line 626
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->canRegisterOrUnregisterToggleListener(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->removeToggleListener(Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;)V

    const-string v0, "Launcher.ShortcutInfo"

    .line 628
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

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->updateNewInstallNotification()V

    :cond_0
    return-void
.end method

.method private updateLabelInDatabases(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 4

    .line 321
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-static {p2, v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateLabelInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 963
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->areContentsTheSame(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canAcceptByHotSeats()Z
    .locals 2

    .line 406
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

    .line 258
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FK_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.trustonic.telecoms.standard.dlc"

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/miui/home/launcher/ShortcutInfo;->sRetainedList:Lcom/miui/home/launcher/RetainedList;

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/RetainedList;->contain(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 265
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 266
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->checkCanBeDeleted(Landroid/content/Context;)V

    .line 268
    :cond_2
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public canBeDrop()Z
    .locals 3

    .line 246
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    if-nez v0, :cond_2

    .line 247
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

    .line 239
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

    .line 240
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

    .line 241
    iput p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    return-void
.end method

.method public clearSavedCheckedStatus()V
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->clearSavedCheckedStatus()V

    return-void
.end method

.method public finishPending()V
    .locals 0

    .line 740
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->finishPending()V

    .line 741
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->clearSavedCheckedStatus()V

    return-void
.end method

.method public getAnnounceForDelete()Ljava/lang/String;
    .locals 2

    .line 796
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 797
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

.method public getAppStyle()Ljava/lang/String;
    .locals 1

    .line 990
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u5206\u5c4f\u7ec4\u5408"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u72ec\u7acbapp"

    :goto_0
    return-object v0
.end method

.method public getBuddyForParent()Landroid/view/ViewGroup;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0
.end method

.method public getBuddyIconView(Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 660
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 494
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

    .line 437
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-static {}, Lcom/miui/home/launcher/common/IconDisabledFilter;->getInstance()Lcom/miui/home/launcher/common/IconDisabledFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/IconDisabledFilter;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SystemAppStubConfig;->isMiuiAppStub()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->getProgressFilter()Landroid/graphics/LightingColorFilter;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 892
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

.method public getExtraPairPackageName()Ljava/lang/String;
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "app_pair_package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getExtraPairUserId()I
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v2, "app_pair_user_id"

    .line 484
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v0, "Launcher.ShortcutInfo"

    const-string v2, "Failed to get extra pair userId : mIntent is null"

    .line 486
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
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

    .line 838
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ShortcutInfo$iGtRoxApG9M95j20Y2bhhzucNpA;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$ShortcutInfo$iGtRoxApG9M95j20Y2bhhzucNpA;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method

.method public getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V
    .locals 2
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

    .line 415
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 417
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 419
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/ShortcutInfo$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/ShortcutInfo$1;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/miui/home/launcher/ShortcutInfo$2;

    invoke-direct {p1, p0, p4}, Lcom/miui/home/launcher/ShortcutInfo$2;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/function/Consumer;)V

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 448
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 449
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 454
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 p3, 0xf

    if-ne p1, p3, :cond_1

    .line 455
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 457
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez p1, :cond_2

    .line 459
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    .line 461
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getIconPackage()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMessageBg()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTile()[B
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 472
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

.method public getPairCompletePackageName()Ljava/lang/String;
    .locals 2

    .line 982
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 983
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getExtraPairPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mSystemApplicationConfig:Lcom/miui/home/launcher/SystemAppStubConfig;

    return-object v0
.end method

.method public getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p1

    .line 298
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getResParseTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTitleStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 309
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 310
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

    .line 588
    instance-of v0, p1, Lcom/miui/home/launcher/ToggleDrawable;

    if-eqz v0, :cond_0

    .line 589
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ToggleDrawable;

    invoke-virtual {v0, p2, p3}, Lcom/miui/home/launcher/ToggleDrawable;->refreshForeground(Landroid/content/Context;I)V

    return-object p1

    .line 592
    :cond_0
    invoke-static {p2, p3}, Lcom/miui/home/launcher/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getToggleId()I
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "ToggleId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTrackMessage()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 7

    .line 752
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_CETUS:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f1101b8

    .line 753
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    .line 756
    :cond_0
    iget-wide v3, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v5, -0x65

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 757
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->inMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->invertChecked()V

    .line 760
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/EditModeItemClickedMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/EditModeItemClickedMessage;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 761
    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v2

    .line 765
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 768
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 769
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

    .line 770
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 772
    :cond_3
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_5

    .line 773
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    .line 774
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SystemAppStubConfig;->isMiuiAppStub()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 776
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "miui.autoinstall.config.ACTION_SINGLE_RESTORE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.core"

    .line 777
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_package_name"

    .line 778
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 781
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 784
    :cond_6
    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/Launcher;->launch(Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/View;)V

    .line 785
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->makeShortcutNotHybrid(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 786
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch(Lcom/miui/home/launcher/Launcher;)V

    :goto_1
    return v2
.end method

.method public invertChecked()V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->invertChecked()V

    .line 710
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isContactShortcut()Z
    .locals 2

    const-string v0, "com.android.contacts"

    .line 401
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeepShortcut()Z
    .locals 2

    .line 465
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

    .line 393
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

    .line 251
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 253
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

.method public isIconFullyVisible()Z
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 670
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public isIdAlreadyUpdated(J)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNeedNewInstalledAnim()Z
    .locals 2

    .line 945
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewInstalled()Z
    .locals 2

    .line 940
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPairIcon()Z
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "app_pair_package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShortcut()Z
    .locals 3

    .line 280
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

    .line 174
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 p1, 0x1

    .line 177
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 179
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 180
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

    .line 183
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x5

    .line 186
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    .line 187
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 188
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

    .line 288
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

    .line 584
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result v0

    invoke-static {v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getName(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public makeUniqueKey(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mUniqueKey:Lcom/miui/home/launcher/interfaces/IUniqueKey;

    if-nez v0, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/fold/PairShortcutUniqueKey;

    invoke-direct {v0}, Lcom/miui/home/launcher/fold/PairShortcutUniqueKey;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/fold/ShortcutUniqueKey;

    invoke-direct {v0}, Lcom/miui/home/launcher/fold/ShortcutUniqueKey;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mUniqueKey:Lcom/miui/home/launcher/interfaces/IUniqueKey;

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mUniqueKey:Lcom/miui/home/launcher/interfaces/IUniqueKey;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/interfaces/IUniqueKey;->makeUniqueKey(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public makeUniquelyShortcutKey()Ljava/lang/String;
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->makeUniqueKey(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 533
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string p1, "Launcher.ShortcutInfo"

    .line 535
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

    .line 537
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

    .line 538
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
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

    .line 541
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string p1, "intent"

    .line 544
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconType"

    .line 546
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 549
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "iconPackage"

    .line 550
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "iconPackage"

    .line 552
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_4
    :goto_2
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->isBitmapIconType(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 556
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/home/launcher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 557
    :cond_5
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-nez p1, :cond_7

    .line 558
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz p1, :cond_6

    .line 559
    iget-object p1, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    const-string p1, "iconPackage"

    .line 560
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconResource"

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, "iconResource"

    const-string v0, ""

    .line 565
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_7
    :goto_3
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez p1, :cond_9

    .line 571
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p1, "iconPackage"

    .line 572
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

    .line 574
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-void
.end method

.method public onIconChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 884
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 886
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 887
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    :cond_1
    return-void
.end method

.method public onLaunch(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 338
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 340
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 341
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 342
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 344
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    .line 347
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->tryUpdateFolderIndicator(Lcom/miui/home/launcher/Launcher;)V

    .line 348
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 349
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    invoke-static {p0, v2, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShortcutActiveEvent(Lcom/miui/home/launcher/ShortcutInfo;ZLjava/lang/String;)V

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    invoke-static {p0, v2, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShortcutClickEvent(Lcom/miui/home/launcher/ShortcutInfo;ZLjava/lang/String;)V

    return-void
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 745
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->makeShortcutNotHybrid(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 746
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->tryUnregisterToggleListener()V

    .line 748
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->notifyRemoveFromLauncher(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public printIdentity()Ljava/lang/String;
    .locals 2

    .line 614
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

    .line 616
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
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

    .line 682
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->stopLoading()V

    .line 685
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 686
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public restoreCheckedStatus()V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->restoreCheckedStatus()V

    .line 722
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public saveCheckedStatus()V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->saveCheckedStatus()V

    .line 716
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public final setActivity(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V
    .locals 2

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 523
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 525
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 526
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string p2, "profile"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 527
    iput p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 528
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateUser(Landroid/content/Intent;)V

    return-void
.end method

.method public setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V
    .locals 2

    .line 644
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->tryUnregisterToggleListener()V

    .line 645
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->tryRegisterToggleListener(Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 646
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    .line 647
    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    .line 648
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_0

    const-string p1, "com.miui.backup:drawable/in_progress"

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 649
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public setHideApplicationMessage(Z)V
    .locals 0

    .line 732
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setHideApplicationMessage(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 734
    invoke-virtual {p0, p1, p1, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public setIconPackage(Ljava/lang/String;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 1

    .line 695
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/CheckableDelegate;->setIsChecked(Z)V

    .line 697
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    :cond_0
    return-void
.end method

.method public setLabelAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->updateLabelInDatabases(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 370
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 371
    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 372
    iput-object p3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    .line 373
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_0

    const-string p1, "com.miui.backup:drawable/in_progress"

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    invoke-virtual {p1, p2, p3, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public setScreenId(J)V
    .locals 0

    .line 968
    iput-wide p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    return-void
.end method

.method public setSystemStubApplicationConfig(Landroid/content/ComponentName;)V
    .locals 3

    .line 911
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 912
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 913
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const v1, 0xc0080

    .line 915
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 913
    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 917
    new-instance v0, Lcom/miui/home/launcher/SystemAppStubConfig;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/SystemAppStubConfig;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mSystemApplicationConfig:Lcom/miui/home/launcher/SystemAppStubConfig;

    :cond_0
    return-void
.end method

.method public setThirdApplicationConfig(Landroid/content/ComponentName;)V
    .locals 4

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5:Z

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 930
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0xc0080

    .line 932
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 930
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 934
    new-instance v1, Lcom/miui/home/launcher/ThirdApplicationConfig;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    :cond_0
    return-void
.end method

.method public setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 330
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-static {p2, v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateTitleInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V

    .line 333
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getResParseTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setLabelAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public setTrackMessage(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    return-void
.end method

.method public setUser(Landroid/os/UserHandle;)V
    .locals 2

    .line 275
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setUser(Landroid/os/UserHandle;)V

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;
    .locals 3

    .line 958
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public unbind()V
    .locals 0

    .line 622
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->unbind()V

    return-void
.end method

.method public updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 828
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setTag(Ljava/lang/Object;)V

    .line 830
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    .line 831
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 832
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->relayoutMessageTextView()V

    .line 834
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->tryUpdateFolderIndicator(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public updateIcon(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 896
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 897
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)Ljava/util/function/Consumer;

    move-result-object v2

    .line 896
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method updateInstallSourceInfo(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3

    .line 210
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 212
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    .line 213
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getOriginatingPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getOriginatingPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public updateNormalShortcut(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "miui.intent.extra.SHOW_MESSAGE"

    .line 801
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "miui.intent.extra.SHOW_MESSAGE"

    const/4 v1, 0x1

    .line 802
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 803
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setHideApplicationMessage(Z)V

    :cond_0
    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 807
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 808
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "android.intent.extra.shortcut.ICON"

    .line 811
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.intent.extra.shortcut.ICON"

    .line 812
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 813
    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 814
    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const-string v3, "com.miui.home.shortcut.extra.INTENT_NEW"

    .line 819
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "com.miui.home.shortcut.extra.INTENT_NEW"

    .line 820
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/content/Intent;

    const-string p2, "Launcher.ShortcutInfo"

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNormalShortcut: newIntent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_3
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->updateShortcutInfo(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    return-void
.end method

.method public updateScreenIdIfHasDifferent(Lcom/miui/home/launcher/ShortcutInfo;J)V
    .locals 2

    .line 972
    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->isIdAlreadyUpdated(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setScreenId(J)V

    :cond_0
    return-void
.end method

.method protected updateShortcutInfo(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 856
    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 862
    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p4, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 863
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/miui/home/launcher/common/Utilities;->equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result p2

    if-nez p2, :cond_1

    .line 864
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p4, p2}, Lcom/miui/home/launcher/common/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 866
    :cond_1
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 867
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    .line 868
    iget p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->isBitmapIconType(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 869
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    :cond_2
    move p4, v0

    .line 873
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 875
    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    move p4, v0

    :cond_4
    if-eqz p4, :cond_5

    .line 878
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 879
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    :cond_5
    return-void
.end method

.method public wrapIconWithBorder(Landroid/content/Context;)V
    .locals 1

    .line 506
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    .line 508
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

    .line 509
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

    .line 510
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

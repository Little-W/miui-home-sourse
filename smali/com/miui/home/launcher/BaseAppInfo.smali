.class public Lcom/miui/home/launcher/BaseAppInfo;
.super Lcom/miui/home/launcher/ShortcutInfo;
.source "BaseAppInfo.java"


# instance fields
.field private categories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private componentKey:Lcom/miui/home/launcher/util/ComponentKey;

.field public componentName:Landroid/content/ComponentName;

.field private lastTimeUsed:J

.field private mAppLauncherCount:I

.field private mLoadTime:J

.field private mPinyinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mPinyinList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/library/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/miui/home/launcher/BaseAppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mPinyinList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->itemType:I

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->spanY:I

    iput v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->spanX:I

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->container:J

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/BaseAppInfo;->resetTitle(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    if-eqz p3, :cond_0

    .line 50
    iget p2, p0, Lcom/miui/home/launcher/BaseAppInfo;->runtimeStatusFlags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/miui/home/launcher/BaseAppInfo;->runtimeStatusFlags:I

    .line 52
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->updateInstallSourceInfo(Landroid/content/pm/LauncherActivityInfo;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/BaseAppInfo;->setThirdApplicationConfig(Landroid/content/ComponentName;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->setSystemStubApplicationConfig(Landroid/content/ComponentName;)V

    return-void
.end method

.method static updateRuntimeFlagsForActivityTarget(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/miui/home/launcher/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    .line 104
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    const/16 v2, 0x80

    goto :goto_0

    :cond_1
    const/16 v2, 0x40

    :goto_0
    or-int/2addr v1, v2

    .line 105
    iput v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    .line 106
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 108
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    :cond_2
    return-void
.end method


# virtual methods
.method public addCategory(I)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAppLaunchCount()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mAppLauncherCount:I

    return v0
.end method

.method public getCategories()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    return-object v0
.end method

.method public getLastTimeUsed()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->lastTimeUsed:J

    return-wide v0
.end method

.method public getLoadTime()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mLoadTime:J

    return-wide v0
.end method

.method public getPinyinList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mPinyinList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isHideApp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSecurityHided()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseAppInfo;->toPackageAndUser()Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseAppInfo;->isPairIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseAppInfo;->toPackageAndUser1()Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 3

    .line 93
    new-instance v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>(Lcom/miui/home/launcher/BaseAppInfo;)V

    const-wide/16 v1, -0x1

    .line 94
    iput-wide v1, p0, Lcom/miui/home/launcher/BaseAppInfo;->id:J

    return-object v0
.end method

.method public onLaunch(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 153
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch(Lcom/miui/home/launcher/Launcher;)V

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseAppInfo;->getAppLaunchCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->setAppLaunchCount(I)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/BaseAppInfo;->setLastTimeUsed(J)V

    return-void
.end method

.method public removeCategory(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resetTitle(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 3

    .line 59
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    .line 60
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    iget-object v1, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {v0, v1, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentKey:Lcom/miui/home/launcher/util/ComponentKey;

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v1, 0x10200000

    invoke-virtual {p0, v0, v1, p2}, Lcom/miui/home/launcher/BaseAppInfo;->setActivity(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->loadTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p2, p0, Lcom/miui/home/launcher/BaseAppInfo;->mPinyinList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->containsSimplifiedChinese(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 69
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    invoke-static {p1, p2}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 70
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 71
    iget-object v2, p0, Lcom/miui/home/launcher/BaseAppInfo;->mPinyinList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setAppLaunchCount(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/miui/home/launcher/BaseAppInfo;->mAppLauncherCount:I

    return-void
.end method

.method setCategories(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method setLastTimeUsed(J)V
    .locals 0

    .line 117
    iput-wide p1, p0, Lcom/miui/home/launcher/BaseAppInfo;->lastTimeUsed:J

    return-void
.end method

.method setLoadTime(J)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lcom/miui/home/launcher/BaseAppInfo;->mLoadTime:J

    return-void
.end method

.method public toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentKey:Lcom/miui/home/launcher/util/ComponentKey;

    return-object v0
.end method

.method toPackageAndUser()Lcom/miui/home/launcher/LauncherModel$PackageAndUser;
    .locals 3

    .line 81
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    iget-object v1, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/BaseAppInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method toPackageAndUser1()Lcom/miui/home/launcher/LauncherModel$PackageAndUser;
    .locals 3

    .line 85
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseAppInfo;->getPackageName1()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/BaseAppInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

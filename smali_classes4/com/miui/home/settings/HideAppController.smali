.class public final Lcom/miui/home/settings/HideAppController;
.super Ljava/lang/Object;
.source "HideAppController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/HideAppController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHideAppController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HideAppController.kt\ncom/miui/home/settings/HideAppController\n*L\n1#1,92:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/settings/HideAppController$Companion;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHideAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconProvider:Lcom/miui/home/launcher/IconProvider;

.field private mSpecificApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/settings/HideAppController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/settings/HideAppController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/settings/HideAppController;->Companion:Lcom/miui/home/settings/HideAppController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/home/settings/HideAppController;->mContext:Landroid/content/Context;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/miui/home/settings/HideAppController;->mSpecificApplications:Ljava/util/List;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/miui/home/settings/HideAppController;->mHideAppsList:Ljava/util/List;

    return-void
.end method

.method private final hideCalendarAndContacts(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.android.fileexplorer"

    .line 61
    check-cast p0, Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.android.contacts"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private final isHideAppValid(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 5

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/settings/HideAppController;->isUninstallAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_3

    .line 66
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 67
    sget-boolean v1, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v2, "it"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getGlobalHideAppItem()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHideAppItem()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getProhibitHiddenActivities()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 71
    array-length v1, p0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 72
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private final isUninstallAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 90
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result p0

    if-nez p0, :cond_0

    .line 89
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 90
    :cond_0
    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ItemInfo;->canBeDeleted(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getSpecificAppCount()I
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/miui/home/settings/HideAppController;->mSpecificApplications:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getSpecificApplications()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/miui/home/settings/HideAppController;->mSpecificApplications:Ljava/util/List;

    return-object p0
.end method

.method public final isShowShortcutManager()Z
    .locals 4

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/settings/HideAppController;->loadAndGetHideApps()Ljava/util/List;

    move-result-object v0

    .line 53
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/settings/HideAppController;->getSpecificAppCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/settings/HideAppController;->getSpecificApplications()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public final loadAndGetHideApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/miui/home/settings/HideAppController;->mHideAppsList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/miui/home/settings/HideAppController;->mHideAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/HideAppController;->mSpecificApplications:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/miui/home/settings/HideAppController;->mSpecificApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/HideAppController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    .line 32
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 34
    new-instance v3, Lcom/miui/home/launcher/AppInfo;

    iget-object v4, p0, Lcom/miui/home/settings/HideAppController;->mContext:Landroid/content/Context;

    const-string v5, "activityInfo"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Lcom/miui/home/launcher/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->needShieldHideSwitchDevice()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "appInfo.packageName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/miui/home/settings/HideAppController;->hideCalendarAndContacts(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    invoke-direct {p0, v3}, Lcom/miui/home/settings/HideAppController;->isHideAppValid(Lcom/miui/home/launcher/AppInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    iget-object v4, p0, Lcom/miui/home/settings/HideAppController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/home/launcher/IconProvider;->newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/settings/HideAppController;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    .line 40
    iget-object v4, p0, Lcom/miui/home/settings/HideAppController;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/IconProvider;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/AppInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v1, p0, Lcom/miui/home/settings/HideAppController;->mHideAppsList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.android.fileexplorer"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.android.contacts"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    :cond_5
    iget-object v1, p0, Lcom/miui/home/settings/HideAppController;->mSpecificApplications:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_6
    iget-object p0, p0, Lcom/miui/home/settings/HideAppController;->mHideAppsList:Ljava/util/List;

    return-object p0
.end method

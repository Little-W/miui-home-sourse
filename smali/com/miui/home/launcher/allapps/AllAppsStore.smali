.class public Lcom/miui/home/launcher/allapps/AllAppsStore;
.super Ljava/lang/Object;
.source "AllAppsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;,
        Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;
    }
.end annotation


# static fields
.field public static final PERSONAL_MATCHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

.field public static final WORK_MATHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;


# instance fields
.field private mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

.field private final mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

.field private final mIconContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 272
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofXSpaceUser()Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->or(Lcom/miui/home/launcher/util/ItemInfoMatcher;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsStore;->PERSONAL_MATCHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    .line 273
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsStore;->PERSONAL_MATCHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    invoke-static {v0}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->not(Lcom/miui/home/launcher/util/ItemInfoMatcher;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsStore;->WORK_MATHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsMap;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AllAppsMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllCategoryList()Lcom/miui/home/launcher/AllCategoryList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    return-void
.end method

.method private addOrUpdateApps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 140
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/allapps/AllAppsMap;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/AppInfo;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findAppInfo(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;
    .locals 3

    .line 264
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 265
    iget-object v2, v1, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$updateMessage$1(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    .line 226
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 227
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setMessageImmediately(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateTitleTip$0(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    .line 208
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    :cond_0
    return-void
.end method

.method private notifyUpdate(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 167
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;

    invoke-interface {v2, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;->onAppsUpdated(ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeApps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 159
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 161
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->notifyUpdate(ILjava/util/List;)V

    return-void
.end method

.method private updateAllIcons(Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;)V
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 191
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 192
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 195
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 196
    instance-of v5, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v5, :cond_0

    .line 197
    check-cast v4, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-interface {p1, v4}, Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;->apply(Lcom/miui/home/launcher/ShortcutIcon;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->notifyUpdate(ILjava/util/List;)V

    return-void
.end method

.method public addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;
    .locals 2

    .line 251
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, "com.xiaomi.mipicks"

    .line 252
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->findAppInfo(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "com.android.vending"

    .line 254
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->findAppInfo(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "com.xiaomi.market"

    .line 258
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->findAppInfo(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    return-object p1
.end method

.method public getAppCategories()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 79
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 81
    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getCategories()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 84
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/AllCategoryList;->getCategory(Ljava/lang/Integer;)Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getApps()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getApps(I)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 69
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getCategories()Ljava/util/HashSet;

    move-result-object v3

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getApps(Lcom/miui/home/launcher/util/PackageUserKey;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/util/ComponentKey;

    .line 107
    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/home/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/miui/home/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 108
    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/allapps/AllAppsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 110
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAppsCompat(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/util/PackageUserKey;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps(Lcom/miui/home/launcher/util/PackageUserKey;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasWorkApps()Z
    .locals 4

    .line 276
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 277
    sget-object v2, Lcom/miui/home/launcher/allapps/AllAppsStore;->WORK_MATHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public registerIconContainer(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeApps(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    if-eqz p1, :cond_0

    .line 150
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeApps(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsMap;->clear()V

    .line 97
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addApps(Ljava/util/List;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsMap;->setEnable(Z)V

    return-void
.end method

.method public unregisterIconContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->notifyUpdate(ILjava/util/List;)V

    return-void
.end method

.method public updateMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/UserHandle;)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p5}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getAppsCompat(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 217
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_0

    const/4 p5, 0x0

    .line 218
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateMessage(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public updateMessage(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->isHideApplicationMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/home/launcher/AppInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 225
    new-instance p3, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$Ps023ecWHe_tji3oSA4yNO-iSfM;

    invoke-direct {p3, p1, p2}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$Ps023ecWHe_tji3oSA4yNO-iSfM;-><init>(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateAllIcons(Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;)V

    :cond_0
    return-void
.end method

.method public updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Lcom/miui/home/launcher/allapps/AllAppsMap;

    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    if-eqz v0, :cond_0

    .line 206
    iget p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    iput p1, v0, Lcom/miui/home/launcher/AppInfo;->itemFlags:I

    .line 207
    new-instance p1, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$8k3XA1NleuanxbFgETMFngar2d4;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$8k3XA1NleuanxbFgETMFngar2d4;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateAllIcons(Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;)V

    :cond_0
    return-void
.end method

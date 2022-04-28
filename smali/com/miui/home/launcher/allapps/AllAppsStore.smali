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

.field private final mComponentToAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    .line 59
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

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 144
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 230
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 231
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setMessageImmediately(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateTitleTip$0(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    .line 212
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 213
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

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 171
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

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 163
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->notifyUpdate(ILjava/util/List;)V

    return-void
.end method

.method private updateAllIcons(Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;)V
    .locals 6

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 195
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 196
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 199
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 200
    instance-of v5, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v5, :cond_0

    .line 201
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

    .line 130
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->notifyUpdate(ILjava/util/List;)V

    return-void
.end method

.method public addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 1

    .line 176
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

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    return-object p1
.end method

.method public getAppCategories()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 80
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 82
    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getCategories()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 88
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/AllCategoryList;->getCategory(Ljava/lang/Integer;)Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
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

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

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

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
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

    .line 70
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getCategories()Ljava/util/HashSet;

    move-result-object v3

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
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

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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

    .line 111
    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/home/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/miui/home/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 112
    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 114
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

    .line 121
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 125
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

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeApps(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    if-eqz p1, :cond_0

    .line 154
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeApps(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 1

    .line 180
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

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addApps(Ljava/util/List;)V

    return-void
.end method

.method public unregisterIconContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 190
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

    .line 135
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 136
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->notifyUpdate(ILjava/util/List;)V

    return-void
.end method

.method public updateMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/UserHandle;)V
    .locals 0

    .line 220
    invoke-virtual {p0, p1, p5}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getAppsCompat(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 221
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_0

    const/4 p5, 0x0

    .line 222
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

    .line 227
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->isHideApplicationMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/home/launcher/AppInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 229
    new-instance p3, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$Ps023ecWHe_tji3oSA4yNO-iSfM;

    invoke-direct {p3, p1, p2}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$Ps023ecWHe_tji3oSA4yNO-iSfM;-><init>(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateAllIcons(Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;)V

    :cond_0
    return-void
.end method

.method public updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    if-eqz v0, :cond_0

    .line 210
    iget p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    iput p1, v0, Lcom/miui/home/launcher/AppInfo;->itemFlags:I

    .line 211
    new-instance p1, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$8k3XA1NleuanxbFgETMFngar2d4;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$8k3XA1NleuanxbFgETMFngar2d4;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateAllIcons(Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;)V

    :cond_0
    return-void
.end method

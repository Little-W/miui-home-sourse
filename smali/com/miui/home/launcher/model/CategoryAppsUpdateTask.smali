.class public Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;
.super Lcom/miui/home/launcher/model/DatabaseUpdateTask;
.source "CategoryAppsUpdateTask.java"


# instance fields
.field private final mAdd:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryId:I

.field private final mRemove:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    .line 21
    iput p1, p0, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->mCategoryId:I

    .line 22
    iput-object p2, p0, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->mAdd:Ljava/util/Collection;

    .line 23
    iput-object p3, p0, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->mRemove:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 0

    .line 45
    iget p1, p0, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->mCategoryId:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->bindCategoryUpdate(I)V

    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 2

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CategorySettingHelper;->disableAppCategoryUpdateEnable()V

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->mAdd:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/AppInfo;

    .line 31
    invoke-virtual {p3}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->mCategoryId:I

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->addAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget v0, p0, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->mCategoryId:I

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/AppInfo;->addCategory(I)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->mRemove:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/AppInfo;

    .line 36
    invoke-virtual {p3}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->mCategoryId:I

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->removeAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    iget v0, p0, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;->mCategoryId:I

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/AppInfo;->removeCategory(I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

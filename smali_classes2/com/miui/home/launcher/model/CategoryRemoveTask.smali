.class public Lcom/miui/home/launcher/model/CategoryRemoveTask;
.super Lcom/miui/home/launcher/model/DatabaseUpdateTask;
.source "CategoryRemoveTask.java"


# instance fields
.field private final mApps:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryId:I


# direct methods
.method public constructor <init>(ILjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/model/CategoryRemoveTask;->mCategoryId:I

    .line 20
    iput-object p2, p0, Lcom/miui/home/launcher/model/CategoryRemoveTask;->mApps:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/model/CategoryRemoveTask;->bindCategoryRemoved()V

    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 1

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 26
    iget p2, p0, Lcom/miui/home/launcher/model/CategoryRemoveTask;->mCategoryId:I

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherCategory$Category;->removeCategory(Landroid/content/ContentResolver;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 27
    iget p2, p0, Lcom/miui/home/launcher/model/CategoryRemoveTask;->mCategoryId:I

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/AllCategoryList;->removeCategory(I)V

    .line 28
    iget-object p2, p0, Lcom/miui/home/launcher/model/CategoryRemoveTask;->mApps:Ljava/util/Collection;

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

    .line 29
    iget v0, p0, Lcom/miui/home/launcher/model/CategoryRemoveTask;->mCategoryId:I

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->removeAppCategoryConfig(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget v0, p0, Lcom/miui/home/launcher/model/CategoryRemoveTask;->mCategoryId:I

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/AppInfo;->removeCategory(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

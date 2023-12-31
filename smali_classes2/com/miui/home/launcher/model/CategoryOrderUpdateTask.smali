.class public Lcom/miui/home/launcher/model/CategoryOrderUpdateTask;
.super Lcom/miui/home/launcher/model/DatabaseUpdateTask;
.source "CategoryOrderUpdateTask.java"


# instance fields
.field private final mCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/home/launcher/model/CategoryOrderUpdateTask;->mCategoryList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/model/CategoryOrderUpdateTask;->bindCategoryOrderUpdate()V

    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 2

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/model/CategoryOrderUpdateTask;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/model/CategoryOrderUpdateTask;->mCategoryList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 26
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v1

    invoke-static {p1, v1, p2}, Lcom/miui/home/launcher/LauncherCategory$Category;->updateCategoryOrder(Landroid/content/ContentResolver;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    invoke-virtual {p3, v0, p2}, Lcom/miui/home/launcher/AllCategoryList;->updateCategoryPriority(II)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

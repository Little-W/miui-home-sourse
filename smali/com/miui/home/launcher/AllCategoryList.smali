.class public Lcom/miui/home/launcher/AllCategoryList;
.super Ljava/lang/Object;
.source "AllCategoryList.java"


# instance fields
.field private final mCategoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/AllCategoryList;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public addCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V
    .locals 1

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public generateFirstPriority()I
    .locals 3

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 102
    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getPriority()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getPriority()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public generateLastPriority()I
    .locals 3

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 92
    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getPriority()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getPriority()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getAllCategoryId()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCategory(Ljava/lang/Integer;)Lcom/miui/home/launcher/allapps/category/CategoryInfo;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    return-object p0
.end method

.method public getCategoryName(I)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/AllCategoryList;->getCategory(Ljava/lang/Integer;)Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method isCategoryExist(I)Z
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 56
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isCategoryExist(Ljava/lang/String;)Z
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 47
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public loadAllAppCategory()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    iget-object v0, p0, Lcom/miui/home/launcher/AllCategoryList;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherCategory$Category;->getAllCategory(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 29
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/AllCategoryList;->addCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCategory(I)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/AllCategoryList;->mCategoryMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateCategoryName(ILjava/lang/String;)V
    .locals 0

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/AllCategoryList;->getCategory(Ljava/lang/Integer;)Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->setCategoryName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCategoryPriority(II)V
    .locals 0

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/AllCategoryList;->getCategory(Ljava/lang/Integer;)Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->setPriority(I)V

    :cond_0
    return-void
.end method

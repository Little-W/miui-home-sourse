.class public Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;
.super Lcom/miui/home/launcher/util/ItemInfoMatcher;
.source "AppCategorySelectAdapterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectedFilter"
.end annotation


# instance fields
.field private mAdded:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoved:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-direct {p0}, Lcom/miui/home/launcher/util/ItemInfoMatcher;-><init>()V

    .line 345
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mAdded:Ljava/util/HashSet;

    .line 346
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mRemoved:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/AppInfo;)V
    .locals 3

    .line 349
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->access$000(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mAdded:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 352
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mRemoved:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mRemoved:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 355
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mAdded:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mAdded:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 372
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mRemoved:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2

    .line 377
    instance-of p2, p1, Lcom/miui/home/launcher/AppInfo;

    if-eqz p2, :cond_1

    .line 378
    move-object p2, p1

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object p2

    .line 379
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->access$000(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 380
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mRemoved:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mAdded:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Lcom/miui/home/launcher/AppInfo;)V
    .locals 3

    .line 360
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->access$000(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mAdded:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mRemoved:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mAdded:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 366
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->mRemoved:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

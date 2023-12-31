.class Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;
.super Ljava/lang/Object;
.source "AllAppsCategoryListContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$100(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    iget-object v1, v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->setCategoryList(Ljava/util/ArrayList;)V

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$200(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$300(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    :cond_0
    return-void
.end method

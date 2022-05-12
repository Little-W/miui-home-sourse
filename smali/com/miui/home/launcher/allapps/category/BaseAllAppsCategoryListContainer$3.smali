.class Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$3;
.super Ljava/lang/Object;
.source "BaseAllAppsCategoryListContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->access$100(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    iget-object v1, v1, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->setCategoryList(Ljava/util/ArrayList;)V

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->access$200(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)V

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->access$300(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)V

    :cond_0
    return-void
.end method

.class Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;
.super Ljava/lang/Object;
.source "AllAppsCategoryListContainer.java"

# interfaces
.implements Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onFinishInflate()V
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

    .line 120
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$000(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$000(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$000(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    return-void
.end method

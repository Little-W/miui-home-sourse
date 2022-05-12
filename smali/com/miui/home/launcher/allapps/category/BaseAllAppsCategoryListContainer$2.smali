.class Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$2;
.super Ljava/lang/Object;
.source "BaseAllAppsCategoryListContainer.java"

# interfaces
.implements Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->onFinishInflate()V
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

    .line 127
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->access$000(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->onPageSelected(I)V

    return-void
.end method

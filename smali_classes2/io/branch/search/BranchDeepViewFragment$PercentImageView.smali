.class public Lio/branch/search/BranchDeepViewFragment$PercentImageView;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchDeepViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PercentImageView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v0, p2, v1}, Lio/branch/search/BranchDeepViewFragment;->access$400(Landroid/content/res/Resources;IF)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.class Lcom/miui/home/launcher/CellLayout$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$1;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 213
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$1;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/CellLayout;->access$000(Lcom/miui/home/launcher/CellLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 215
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$1;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/CellLayout;->access$000(Lcom/miui/home/launcher/CellLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 216
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$1;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/CellLayout;->access$100(Lcom/miui/home/launcher/CellLayout;)[F

    move-result-object v2

    aget v2, v2, v0

    add-float/2addr v2, p1

    const/high16 v3, 0x40800000    # 4.0f

    rem-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float v4, v2, v5

    if-gtz v4, :cond_1

    sub-float v2, v5, v2

    goto :goto_1

    :cond_1
    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_2

    sub-float v2, v5, v2

    goto :goto_1

    :cond_2
    cmpg-float v4, v2, v3

    if-gtz v4, :cond_3

    sub-float/2addr v2, v3

    .line 226
    :cond_3
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/CellLayout;->access$200()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    if-eqz v1, :cond_4

    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    neg-float v2, v3

    div-float/2addr v2, v5

    .line 230
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

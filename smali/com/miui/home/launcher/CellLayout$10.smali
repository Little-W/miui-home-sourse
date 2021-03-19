.class Lcom/miui/home/launcher/CellLayout$10;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellLayout;->showEmptyCellMark(Z)V
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

    .line 3084
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$10;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 3087
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3088
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$10;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$2200(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$10;->this$0:Lcom/miui/home/launcher/CellLayout;

    .line 3089
    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$2300(Lcom/miui/home/launcher/CellLayout;)I

    move-result v0

    rsub-int v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$10;->this$0:Lcom/miui/home/launcher/CellLayout;

    .line 3090
    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$2300(Lcom/miui/home/launcher/CellLayout;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    :goto_0
    float-to-int p1, v0

    .line 3091
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$10;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/CellLayout;->access$2400(Lcom/miui/home/launcher/CellLayout;I)V

    .line 3092
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout$10;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->invalidate()V

    return-void
.end method

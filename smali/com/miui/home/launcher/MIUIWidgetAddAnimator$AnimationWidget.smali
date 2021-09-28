.class public Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;
.super Ljava/lang/Object;
.source "MIUIWidgetAddAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/MIUIWidgetAddAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationWidget"
.end annotation


# instance fields
.field public centerX:F

.field public centerY:F

.field public distance:F

.field public hasWaved:Z

.field public height:I

.field public mass:I

.field public view:Landroid/view/View;

.field public width:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->view:Landroid/view/View;

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->x:F

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->y:F

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->width:I

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->height:I

    .line 219
    iget p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->x:F

    iget v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->width:I

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->centerX:F

    .line 220
    iget p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->y:F

    iget v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->height:I

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->centerY:F

    return-void
.end method

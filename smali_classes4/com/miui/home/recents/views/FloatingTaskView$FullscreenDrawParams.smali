.class public Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;
.super Ljava/lang/Object;
.source "FloatingTaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/FloatingTaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullscreenDrawParams"
.end annotation


# instance fields
.field public final mBounds:Landroid/graphics/RectF;

.field private final mCornerRadius:F

.field public mCurrentDrawnCornerRadius:F

.field public mScaleX:F

.field public mScaleY:F

.field private final mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mBounds:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 215
    iput p1, p0, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mScaleX:F

    .line 216
    iput p1, p0, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mScaleY:F

    const/high16 p1, 0x41f00000    # 30.0f

    .line 220
    iput p1, p0, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mCornerRadius:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 222
    iput p1, p0, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    .line 224
    iget p1, p0, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mCornerRadius:F

    iput p1, p0, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    return-void
.end method

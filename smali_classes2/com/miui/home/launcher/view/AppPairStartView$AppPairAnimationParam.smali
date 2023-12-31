.class public Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;
.super Ljava/lang/Object;
.source "AppPairStartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/view/AppPairStartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppPairAnimationParam"
.end annotation


# instance fields
.field public alpha:F

.field public cornerRadius:F

.field public matrix:Landroid/graphics/Matrix;

.field public windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(FLandroid/graphics/Matrix;Landroid/graphics/Rect;F)V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p1, p0, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->alpha:F

    .line 298
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->matrix:Landroid/graphics/Matrix;

    .line 299
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->windowCrop:Landroid/graphics/Rect;

    .line 300
    iput p4, p0, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->cornerRadius:F

    return-void
.end method

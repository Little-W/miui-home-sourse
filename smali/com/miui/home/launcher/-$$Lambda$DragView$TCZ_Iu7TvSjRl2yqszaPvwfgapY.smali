.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/DragView;

.field private final synthetic f$1:F

.field private final synthetic f$2:F

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:I

.field private final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/DragView;FFIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$0:Lcom/miui/home/launcher/DragView;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$1:F

    iput p3, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$2:F

    iput p4, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$3:I

    iput p5, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$4:I

    iput p6, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$5:I

    iput p7, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$6:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 10

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$0:Lcom/miui/home/launcher/DragView;

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$1:F

    iget v2, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$2:F

    iget v3, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$3:I

    iget v4, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$4:I

    iget v5, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$5:I

    iget v6, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;->f$6:I

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/miui/home/launcher/DragView;->lambda$doDragAnim$2(Lcom/miui/home/launcher/DragView;FFIIIILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

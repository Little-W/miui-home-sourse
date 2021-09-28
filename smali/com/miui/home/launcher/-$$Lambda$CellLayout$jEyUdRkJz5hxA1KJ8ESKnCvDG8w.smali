.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field private final synthetic f$0:F

.field private final synthetic f$1:F

.field private final synthetic f$2:Landroid/view/View;

.field private final synthetic f$3:F

.field private final synthetic f$4:I

.field private final synthetic f$5:F

.field private final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(FFLandroid/view/View;FIFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$0:F

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$1:F

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$2:Landroid/view/View;

    iput p4, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$3:F

    iput p5, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$4:I

    iput p6, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$5:F

    iput p7, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$6:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 8

    iget v0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$0:F

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$1:F

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$2:Landroid/view/View;

    iget v3, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$3:F

    iget v4, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$4:I

    iget v5, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$5:F

    iget v6, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$jEyUdRkJz5hxA1KJ8ESKnCvDG8w;->f$6:I

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/CellLayout;->lambda$setAndDoEditModeAnimation$3(FFLandroid/view/View;FIFIF)V

    return-void
.end method

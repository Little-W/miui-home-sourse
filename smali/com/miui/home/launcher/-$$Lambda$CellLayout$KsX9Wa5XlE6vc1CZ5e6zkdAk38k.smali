.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$KsX9Wa5XlE6vc1CZ5e6zkdAk38k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/CellLayout;

.field private final synthetic f$1:F

.field private final synthetic f$2:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;FLandroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$KsX9Wa5XlE6vc1CZ5e6zkdAk38k;->f$0:Lcom/miui/home/launcher/CellLayout;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$KsX9Wa5XlE6vc1CZ5e6zkdAk38k;->f$1:F

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$KsX9Wa5XlE6vc1CZ5e6zkdAk38k;->f$2:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$KsX9Wa5XlE6vc1CZ5e6zkdAk38k;->f$0:Lcom/miui/home/launcher/CellLayout;

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$KsX9Wa5XlE6vc1CZ5e6zkdAk38k;->f$1:F

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$KsX9Wa5XlE6vc1CZ5e6zkdAk38k;->f$2:Landroid/view/Window;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$setAndDoEditModeAnimation$4(Lcom/miui/home/launcher/CellLayout;FLandroid/view/Window;Landroid/animation/ValueAnimator;)V

    return-void
.end method

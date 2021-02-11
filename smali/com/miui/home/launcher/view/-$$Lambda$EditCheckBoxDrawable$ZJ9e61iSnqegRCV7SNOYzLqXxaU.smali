.class public final synthetic Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/graphics/Rect;

.field private final synthetic f$3:Landroid/graphics/Rect;

.field private final synthetic f$4:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method public synthetic constructor <init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/LayerDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;->f$0:I

    iput p2, p0, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;->f$4:Landroid/graphics/drawable/LayerDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v0, p0, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;->f$0:I

    iget v1, p0, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;->f$1:I

    iget-object v2, p0, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;->f$3:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;->f$4:Landroid/graphics/drawable/LayerDrawable;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->lambda$getCheckAnimator$0(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/LayerDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

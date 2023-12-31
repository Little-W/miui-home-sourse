.class public final synthetic Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$06qcZg2mjcBUp9BYUpxjDkqoVrI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$06qcZg2mjcBUp9BYUpxjDkqoVrI;->f$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$06qcZg2mjcBUp9BYUpxjDkqoVrI;->f$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->lambda$startNormalOutAnim$1$NormalEditEnterAnim(Landroid/animation/ValueAnimator;)V

    return-void
.end method

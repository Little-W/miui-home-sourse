.class public final synthetic Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$DisappearValueAnim$1IJKK3La0hjMZ8QS6BaR7cGNZAY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$DisappearValueAnim$1IJKK3La0hjMZ8QS6BaR7cGNZAY;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$DisappearValueAnim$1IJKK3La0hjMZ8QS6BaR7cGNZAY;->f$1:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$DisappearValueAnim$1IJKK3La0hjMZ8QS6BaR7cGNZAY;->f$0:Landroid/view/View;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$DisappearValueAnim$1IJKK3La0hjMZ8QS6BaR7cGNZAY;->f$1:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->lambda$new$0(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

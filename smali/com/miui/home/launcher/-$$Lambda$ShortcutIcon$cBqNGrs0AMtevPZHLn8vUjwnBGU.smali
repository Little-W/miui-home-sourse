.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$cBqNGrs0AMtevPZHLn8vUjwnBGU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$cBqNGrs0AMtevPZHLn8vUjwnBGU;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$cBqNGrs0AMtevPZHLn8vUjwnBGU;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$initShowOrHideCheckBoxAnim$1(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ValueAnimator;)V

    return-void
.end method

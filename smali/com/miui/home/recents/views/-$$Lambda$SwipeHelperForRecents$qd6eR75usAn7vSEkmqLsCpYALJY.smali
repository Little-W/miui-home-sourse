.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qd6eR75usAn7vSEkmqLsCpYALJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qd6eR75usAn7vSEkmqLsCpYALJY;->f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qd6eR75usAn7vSEkmqLsCpYALJY;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qd6eR75usAn7vSEkmqLsCpYALJY;->f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iget-object v1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qd6eR75usAn7vSEkmqLsCpYALJY;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->lambda$dismissChild$306(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

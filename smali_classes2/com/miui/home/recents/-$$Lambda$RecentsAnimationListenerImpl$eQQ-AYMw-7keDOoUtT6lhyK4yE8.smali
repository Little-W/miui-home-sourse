.class public final synthetic Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;->f$1:Z

    iput-boolean p3, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;->f$1:Z

    iget-boolean v2, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$finishControllerAsync$2(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V

    return-void
.end method

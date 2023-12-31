.class public final synthetic Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;
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

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;->f$1:Z

    iput-boolean p3, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;->f$1:Z

    iget-boolean p0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$finishController$1$RecentsAnimationListenerImpl(ZZ)V

    return-void
.end method

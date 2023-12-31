.class Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationCallbackDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/AnimationHandler;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/AnimationHandler;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/miui/home/recents/anim/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchAnimationFrame(J)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/miui/home/recents/anim/AnimationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/anim/AnimationHandler;->doAnimationFrame(J)V

    .line 33
    iget-object p1, p0, Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/miui/home/recents/anim/AnimationHandler;

    iget-object p1, p1, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 34
    iget-object p0, p0, Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/miui/home/recents/anim/AnimationHandler;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/AnimationHandler;->getProvider()Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_0
    return-void
.end method

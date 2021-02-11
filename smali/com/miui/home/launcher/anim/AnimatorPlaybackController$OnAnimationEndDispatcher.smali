.class Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;
.super Lcom/miui/home/launcher/anim/AnimationSuccessListener;
.source "AnimatorPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAnimationEndDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Lcom/miui/home/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/anim/AnimatorPlaybackController$1;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;-><init>(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;)V

    return-void
.end method

.method private dispatchOnEndRecursively(Landroid/animation/Animator;)V
    .locals 2

    .line 227
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->access$300(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 228
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 231
    :cond_0
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 232
    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->access$300(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 233
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->dispatchOnEndRecursively(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->mCancelled:Z

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    iget-object p1, p1, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->dispatchOnEndRecursively(Landroid/animation/Animator;)V

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->access$200(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->access$200(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

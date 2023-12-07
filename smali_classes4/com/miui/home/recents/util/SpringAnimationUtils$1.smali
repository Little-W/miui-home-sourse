.class Lcom/miui/home/recents/util/SpringAnimationUtils$1;
.super Ljava/lang/Object;
.source "SpringAnimationUtils.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

.field final synthetic val$anim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/util/SpringAnimationUtils;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$1;->this$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    iput-object p2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$1;->val$endRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$1;->val$anim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$1;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 202
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$1;->val$anim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method

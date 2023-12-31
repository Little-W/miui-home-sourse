.class Lcom/miui/home/launcher/touch/FeedTransController$2;
.super Lcom/miui/home/launcher/anim/AnimationSuccessListener;
.source "FeedTransController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/touch/FeedTransController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/touch/FeedTransController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/touch/FeedTransController;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedTransController$2;->this$0:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-direct {p0}, Lcom/miui/home/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedTransController$2;->this$0:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-static {p1}, Lcom/miui/home/launcher/touch/FeedTransController;->access$200(Lcom/miui/home/launcher/touch/FeedTransController;)V

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/miui/home/launcher/touch/FeedTransController$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedTransController$2;->this$0:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-static {p0}, Lcom/miui/home/launcher/touch/FeedTransController;->access$100(Lcom/miui/home/launcher/touch/FeedTransController;)V

    return-void
.end method

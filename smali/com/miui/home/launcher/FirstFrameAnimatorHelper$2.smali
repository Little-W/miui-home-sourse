.class Lcom/miui/home/launcher/FirstFrameAnimatorHelper$2;
.super Ljava/lang/Object;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FirstFrameAnimatorHelper;

.field final synthetic val$animation:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper$2;->this$0:Lcom/miui/home/launcher/FirstFrameAnimatorHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper$2;->val$animation:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper$2;->val$animation:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper$2;->this$0:Lcom/miui/home/launcher/FirstFrameAnimatorHelper;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

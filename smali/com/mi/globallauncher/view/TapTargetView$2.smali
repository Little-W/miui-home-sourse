.class Lcom/mi/globallauncher/view/TapTargetView$2;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/view/TapTargetView;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$2;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$2;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 287
    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView$2;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mi/globallauncher/view/TapTargetView;->access$002(Lcom/mi/globallauncher/view/TapTargetView;Z)Z

    return-void
.end method

.class Lcom/miui/home/recents/GestureStubView$1;
.super Ljava/lang/Object;
.source "GestureStubView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStubView;->access$002(Lcom/miui/home/recents/GestureStubView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStubView;->access$002(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 153
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    const/16 v0, 0x102

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 154
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    const-string v0, "onAnimationEnd"

    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStubView;->access$002(Lcom/miui/home/recents/GestureStubView;Z)Z

    return-void
.end method

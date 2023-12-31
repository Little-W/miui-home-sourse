.class Lcom/miui/home/launcher/DragView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragView;->calcAndStartAnimate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 887
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$6;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 890
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$6;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$400(Lcom/miui/home/launcher/DragView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 891
    iget-object p0, p0, Lcom/miui/home/launcher/DragView$6;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p0}, Lcom/miui/home/launcher/DragView;->access$500(Lcom/miui/home/launcher/DragView;)V

    :cond_0
    return-void
.end method

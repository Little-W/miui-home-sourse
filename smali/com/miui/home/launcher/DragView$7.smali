.class Lcom/miui/home/launcher/DragView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragView;->fadeOut()Z
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

    .line 906
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$7;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 908
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$7;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$200(Lcom/miui/home/launcher/DragView;)V

    return-void
.end method

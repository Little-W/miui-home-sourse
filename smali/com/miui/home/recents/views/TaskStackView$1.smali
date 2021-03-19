.class Lcom/miui/home/recents/views/TaskStackView$1;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/TaskStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView$1;->this$0:Lcom/miui/home/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView$1;->this$0:Lcom/miui/home/recents/views/TaskStackView;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskStackView;->access$000(Lcom/miui/home/recents/views/TaskStackView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView$1;->this$0:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->access$002(Lcom/miui/home/recents/views/TaskStackView;Z)Z

    .line 146
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView$1;->this$0:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->invalidate()V

    :cond_0
    return-void
.end method

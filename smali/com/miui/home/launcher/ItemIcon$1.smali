.class Lcom/miui/home/launcher/ItemIcon$1;
.super Ljava/lang/Object;
.source "ItemIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ItemIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ItemIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object v0, v0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object v0, v0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconMessage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/ItemIcon;->access$000(Lcom/miui/home/launcher/ItemIcon;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object v0, v0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/IconMessage;->setScaleX(F)V

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object v0, v0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/IconMessage;->setScaleY(F)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object v0, v0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconMessage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object v0, v0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconMessage;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object v0, v0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconMessage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/ItemIcon$1$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ItemIcon$1$1;-><init>(Lcom/miui/home/launcher/ItemIcon$1;)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

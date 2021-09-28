.class Lcom/miui/home/launcher/DragLayer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragLayer;->highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragLayer;

.field final synthetic val$highlightFolder:Z

.field final synthetic val$icon:Lcom/miui/home/launcher/ItemIcon;

.field final synthetic val$wrapIconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragLayer;Lcom/miui/home/launcher/ItemIcon;Landroid/view/View;Z)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer$5;->this$0:Lcom/miui/home/launcher/DragLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/DragLayer$5;->val$icon:Lcom/miui/home/launcher/ItemIcon;

    iput-object p3, p0, Lcom/miui/home/launcher/DragLayer$5;->val$wrapIconView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/miui/home/launcher/DragLayer$5;->val$highlightFolder:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 631
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$5;->val$icon:Lcom/miui/home/launcher/ItemIcon;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ItemIcon;->setVisibility(I)V

    .line 632
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$5;->this$0:Lcom/miui/home/launcher/DragLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$5;->val$wrapIconView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 633
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragLayer$5;->val$highlightFolder:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$5;->this$0:Lcom/miui/home/launcher/DragLayer;

    invoke-static {p1}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onFinishHighlightLocatedApp()V

    :cond_0
    return-void
.end method

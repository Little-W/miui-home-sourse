.class Lcom/miui/home/launcher/DragLayer$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragLayer$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/DragLayer$6;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragLayer$6;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer$6$1;->this$1:Lcom/miui/home/launcher/DragLayer$6;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 640
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$6$1;->this$1:Lcom/miui/home/launcher/DragLayer$6;

    iget-object p1, p1, Lcom/miui/home/launcher/DragLayer$6;->this$0:Lcom/miui/home/launcher/DragLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$6$1;->this$1:Lcom/miui/home/launcher/DragLayer$6;

    iget-object v0, v0, Lcom/miui/home/launcher/DragLayer$6;->val$maskView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method

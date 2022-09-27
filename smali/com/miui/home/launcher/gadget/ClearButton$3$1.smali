.class Lcom/miui/home/launcher/gadget/ClearButton$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ClearButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/ClearButton$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/ClearButton$3;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1;->this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1;->this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    new-instance v0, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;-><init>(Lcom/miui/home/launcher/gadget/ClearButton$3$1;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->refreshMemoryUsed(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

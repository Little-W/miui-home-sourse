.class Lcom/miui/home/launcher/gadget/ClearButton$3;
.super Ljava/lang/Object;
.source "ClearButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/ClearButton;->execClear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/ClearButton;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/ClearButton;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    new-instance v0, Lcom/miui/home/launcher/gadget/ClearButton$3$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/ClearButton$3$1;-><init>(Lcom/miui/home/launcher/gadget/ClearButton$3;)V

    .line 182
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->setButtonAniamtor(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

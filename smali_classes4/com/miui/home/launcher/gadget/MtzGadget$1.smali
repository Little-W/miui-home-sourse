.class Lcom/miui/home/launcher/gadget/MtzGadget$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MtzGadget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/MtzGadget;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/MtzGadget;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/MtzGadget;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MtzGadget$1;->this$0:Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget$1;->this$0:Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/MtzGadget;->trackClick()V

    .line 58
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

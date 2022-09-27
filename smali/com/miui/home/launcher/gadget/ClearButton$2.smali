.class Lcom/miui/home/launcher/gadget/ClearButton$2;
.super Ljava/lang/Object;
.source "ClearButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/ClearButton;->onCreate()V
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

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$2;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$2;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/ClearButton;->access$100(Lcom/miui/home/launcher/gadget/ClearButton;)V

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$2;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ClearButton;->trackClick()V

    return-void
.end method

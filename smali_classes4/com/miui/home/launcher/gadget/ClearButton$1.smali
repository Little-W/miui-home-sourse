.class Lcom/miui/home/launcher/gadget/ClearButton$1;
.super Ljava/lang/Object;
.source "ClearButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/ClearButton;
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

    .line 47
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$1;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton$1;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->access$000(Lcom/miui/home/launcher/gadget/ClearButton;)V

    return-void
.end method

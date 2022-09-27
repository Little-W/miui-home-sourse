.class Lcom/miui/home/launcher/gadget/Gadget$1;
.super Ljava/lang/Object;
.source "Gadget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Gadget;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Gadget;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget$1;->this$0:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Gadget$1;->this$0:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->trackView()V

    return-void
.end method

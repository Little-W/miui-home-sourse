.class Lcom/miui/home/launcher/upsidescene/FreeButtonState$4;
.super Ljava/lang/Object;
.source "FreeButtonState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/FreeButtonState;->onClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/FreeButtonState;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/FreeButtonState;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState$4;->this$0:Lcom/miui/home/launcher/upsidescene/FreeButtonState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState$4;->this$0:Lcom/miui/home/launcher/upsidescene/FreeButtonState;

    const-string v1, "normal"

    const-string v2, "normal_pressed"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->access$200(Lcom/miui/home/launcher/upsidescene/FreeButtonState;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

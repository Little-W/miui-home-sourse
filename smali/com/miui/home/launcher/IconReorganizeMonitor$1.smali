.class Lcom/miui/home/launcher/IconReorganizeMonitor$1;
.super Ljava/lang/Object;
.source "IconReorganizeMonitor.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/IconReorganizeMonitor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/IconReorganizeMonitor;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$1;->this$0:Lcom/miui/home/launcher/IconReorganizeMonitor;

    iput-object p2, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$1;->this$0:Lcom/miui/home/launcher/IconReorganizeMonitor;

    iget-object v0, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->access$000(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor$1;->apply(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.class Lcom/miui/home/launcher/IconReorganizeMonitor$4;
.super Ljava/lang/Object;
.source "IconReorganizeMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/IconReorganizeMonitor;->revertReorganization(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/IconReorganizeMonitor;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$4;->this$0:Lcom/miui/home/launcher/IconReorganizeMonitor;

    iput-object p2, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 218
    iget-object p0, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$4;->val$context:Landroid/content/Context;

    const v0, 0x7f110421

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

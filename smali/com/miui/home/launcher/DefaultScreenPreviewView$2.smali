.class Lcom/miui/home/launcher/DefaultScreenPreviewView$2;
.super Ljava/lang/Object;
.source "DefaultScreenPreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DefaultScreenPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DefaultScreenPreviewView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 120
    instance-of v0, p1, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 123
    new-instance v1, Lcom/miui/home/launcher/DefaultScreenPreviewView$2$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView$2$1;-><init>(Lcom/miui/home/launcher/DefaultScreenPreviewView$2;I)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 131
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    .line 132
    iget-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$100(Lcom/miui/home/launcher/DefaultScreenPreviewView;)V

    :cond_0
    return-void
.end method

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

    .line 154
    iput-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 156
    instance-of v0, p1, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 159
    new-instance v1, Lcom/miui/home/launcher/DefaultScreenPreviewView$2$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView$2$1;-><init>(Lcom/miui/home/launcher/DefaultScreenPreviewView$2;I)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setFoldDefaultScreenId(J)V

    .line 174
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    .line 175
    iget-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-static {p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->access$100(Lcom/miui/home/launcher/DefaultScreenPreviewView;)V

    :cond_1
    return-void
.end method

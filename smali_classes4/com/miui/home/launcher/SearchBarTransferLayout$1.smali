.class Lcom/miui/home/launcher/SearchBarTransferLayout$1;
.super Ljava/lang/Object;
.source "SearchBarTransferLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarTransferLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$000(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$000(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    .line 156
    iget-object v0, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->dataId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    const-string v1, "onPause"

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$100(Lcom/miui/home/launcher/SearchBarTransferLayout;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

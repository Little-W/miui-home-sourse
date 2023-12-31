.class Lcom/miui/home/launcher/FolderGridView$4;
.super Ljava/lang/Object;
.source "FolderGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderGridView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderGridView;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$4;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$4;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderGridView;->access$300(Lcom/miui/home/launcher/FolderGridView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$4;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderGridView;->access$300(Lcom/miui/home/launcher/FolderGridView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/FolderGridView;->smoothScrollBy(II)V

    .line 450
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView$4;->this$0:Lcom/miui/home/launcher/FolderGridView;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/FolderGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.class Lcom/miui/home/launcher/FolderCling$1;
.super Ljava/lang/Object;
.source "FolderCling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->setContentAlpha(F)V

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v2}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Folder;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    .line 212
    invoke-static {v3}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Folder;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v4}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)I

    move-result v4

    .line 211
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/Folder;->setPadding(IIII)V

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderCling;->access$300(Lcom/miui/home/launcher/FolderCling;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderCling;->access$200(Lcom/miui/home/launcher/FolderCling;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

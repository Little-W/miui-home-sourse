.class final Lcom/miui/home/launcher/folder/FolderIcon2x2$dropIconIntoFolderIcon$3;
.super Ljava/lang/Object;
.source "FolderIcon2x2.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIcon2x2;->dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$dropIconIntoFolderIcon$3;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$dropIconIntoFolderIcon$3;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreViewLastRefreshTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$dropIconIntoFolderIcon$3;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-static {v2}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->access$getMScreenRefreshRate$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$dropIconIntoFolderIcon$3;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->access$getMInfo$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 223
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$dropIconIntoFolderIcon$3;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMPreViewLastRefreshTime(J)V

    return-void
.end method

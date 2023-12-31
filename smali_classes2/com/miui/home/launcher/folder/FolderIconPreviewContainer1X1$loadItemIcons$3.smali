.class final Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$3;
.super Ljava/lang/Object;
.source "FolderIconPreviewContainer1X1.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic $finalIconIndex:I

.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$3;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    iput p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$3;->$finalIconIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$3;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public final accept(Ljava/lang/Void;)V
    .locals 3

    .line 130
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$3;->$finalIconIndex:I

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$3;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object v0

    array-length v0, v0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$3;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-static {v1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$3;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-static {v1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object v1

    aget-object v1, v1, p1

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

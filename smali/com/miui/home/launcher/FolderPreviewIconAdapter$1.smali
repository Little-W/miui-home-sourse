.class Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;
.super Ljava/lang/Object;
.source "FolderPreviewIconAdapter.java"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderPreviewIconAdapter;->refresh(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex2/functions/Consumer<",
        "Ljava/util/ArrayList<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

.field final synthetic val$previewIconInfo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderPreviewIconAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;->val$previewIconInfo:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;->accept(Ljava/util/ArrayList;)V

    return-void
.end method

.method public accept(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->access$000(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 121
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;->val$previewIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->access$000(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;->val$previewIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v2, v3, v4}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;-><init>(Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->notifyDataSetChanged()V

    return-void
.end method
